#!/usr/bin/env bash
# run.sh — run any jq exercise by number
# Usage: ./run.sh 1          (runs exercise 1)
#        ./run.sh 3          (runs exercise 3, etc.)

set -euo pipefail

ex_num="${1:-}"
if [ -z "$ex_num" ]; then
  echo "Usage: ./run.sh <exercise-number>"
  echo "Example: ./run.sh 1"
  exit 1
fi

ex_padded=$(printf '%02d' "$ex_num")
file=$(ls "exercises/${ex_padded}"-*.jq 2>/dev/null | head -1)
if [ -z "$file" ]; then
  echo "Exercise $ex_num not found in exercises/"
  exit 1
fi

# Extract the RUN line from the file header
run_cmd=$(grep '^# RUN:' "$file" | head -1 | sed 's/^# RUN: //')

if [ -n "$run_cmd" ]; then
  echo "=== Exercise $ex_num: $(basename "$file" .jq | sed 's/^[0-9]*-//') ==="
  echo
  eval "$run_cmd"
else
  echo "=== Exercise $ex_num: $(basename "$file" .jq) ==="
  echo
  jq -n -f "$file"
fi
