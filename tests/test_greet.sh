#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "$0")/.."
out=$(bin/greet Ada)
[ "$out" = "Hello, Ada!" ] || { echo "expected 'Hello, Ada!', got '$out'" >&2; exit 1; }
out=$(bin/greet Ada --upper)
[ "$out" = "HELLO, ADA!" ] || { echo "expected 'HELLO, ADA!', got '$out'" >&2; exit 1; }
bin/greet "  Bob  " | grep -q "Hello, Bob!" || { echo "name not trimmed" >&2; exit 1; }
set +e
bin/greet "" >/dev/null 2>&1
code=$?
set -e
[ "$code" -eq 2 ] || { echo "empty name should exit 2, got $code" >&2; exit 1; }
echo "greet tests passed"
