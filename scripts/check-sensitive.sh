#!/usr/bin/env bash
# check-sensitive.sh — grep-based scan for data that should not leave a project.
# Usage: scripts/check-sensitive.sh [folder]   (default: current folder)
# Optional: a local file .sensitive-terms (one term per line, ignored by git)
# with names that must never appear: people, clients, internal project names.
# Exit code: 0 = no hits, 1 = hits to review. A hit is a prompt to look, not proof of a leak.

set -u
target="${1:-.}"
hits=0

scan() {
  local label="$1" pattern="$2"
  local out
  out=$(grep -rInE --exclude-dir=.git --exclude=check-sensitive.sh --exclude=.sensitive-terms "$pattern" "$target" 2>/dev/null)
  if [ -n "$out" ]; then
    echo "== $label"
    echo "$out"
    hits=1
  fi
}

scan "email address"      '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}'
scan "phone number"       '(\+[0-9]{2}[ .-]?)?[0-9]{3}[ .-]?[0-9]{3}[ .-]?[0-9]{3,4}'
scan "IBAN"               '\b[A-Z]{2}[0-9]{2}[A-Z0-9]{11,30}\b'
scan "private key"        'BEGIN [A-Z ]*PRIVATE KEY'
scan "token-like string"  '(sk-[A-Za-z0-9]{20,}|ghp_[A-Za-z0-9]{20,}|xox[bp]-[A-Za-z0-9-]{10,}|AKIA[0-9A-Z]{16})'
scan "secret assignment"  '(password|passwd|api[_-]?key|secret|token)[[:space:]]*[:=][[:space:]]*[^[:space:]<]+'
scan "absolute user path" '(/home/[a-z]|/Users/[A-Za-z]|[A-Z]:\\Users\\)'

if [ -f .sensitive-terms ]; then
  while IFS= read -r term; do
    [ -z "$term" ] && continue
    case "$term" in \#*) continue ;; esac
    out=$(grep -rIniF --exclude-dir=.git --exclude=.sensitive-terms "$term" "$target" 2>/dev/null)
    if [ -n "$out" ]; then
      echo "== private term"
      echo "$out"
      hits=1
    fi
  done < .sensitive-terms
fi

if [ "$hits" -eq 0 ]; then
  echo "clean: no hits in $target"
fi
exit "$hits"
