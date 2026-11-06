#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "$0")/.."
[ -f README.md ] || { echo "README.md not found" >&2; exit 1; }
grep -q "greet" README.md || { echo "README.md does not mention 'greet'" >&2; exit 1; }
grep -q "check.sh" README.md || { echo "README.md does not mention 'check.sh'" >&2; exit 1; }
echo "docs tests passed"
