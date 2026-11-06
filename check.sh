#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "$0")"
test -f README.md
fail=0
for t in tests/test_*.sh; do
  [ -e "$t" ] || { echo "no tests found" >&2; exit 1; }
  echo "== $t"
  bash "$t" || fail=1
done
[ "$fail" -eq 0 ] && echo "checks passed"
exit "$fail"
