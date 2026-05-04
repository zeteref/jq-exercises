#!/usr/bin/env bash
# run.sh — run any reference solution by number
# Usage: ./run.sh 1          (runs reference for exercise 1)
#        ./run.sh 24         (runs capstone reference)

set -euo pipefail

ex_num="${1:-}"
if [ -z "$ex_num" ]; then
  echo "Usage: ./run.sh <exercise-number>"
  echo "Example: ./run.sh 1"
  exit 1
fi

ex_padded=$(printf '%02d' "$ex_num")
file=$(ls "reference/${ex_padded}"-*.jq 2>/dev/null | head -1)
if [ -z "$file" ]; then
  echo "Reference for exercise $ex_num not found"
  exit 1
fi

# Extract the RUN line from the file header
run_cmd=$(grep '^# RUN:' "$file" | head -1 | sed 's/^# RUN: //')

if [ -n "$run_cmd" ]; then
  echo "=== Reference $ex_num: $(basename "$file" .jq | sed 's/^[0-9]*-//') ==="
  echo
  eval "$run_cmd"
else
  echo "=== Reference $ex_num: $(basename "$file" .jq) ==="
  echo
  jq -n -f "$file"
fi
