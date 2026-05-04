#!/usr/bin/env bash
# test.sh — unit-test an exercise against expected output
# Usage: ./test.sh 1          (tests exercise 1)
#        ./test.sh 24         (tests capstone)
#        ./test.sh            (tests all 24 exercises)

set -euo pipefail
cd "$(dirname "$0")"

test_one() {
  local ex_num="$1"
  local ex_padded pad; pad=$(printf '%02d' "$ex_num")
  local file expected run_cmd actual diff_ok

  file=$(ls "exercises/${pad}"-*.jq 2>/dev/null | head -1)
  if [ -z "$file" ]; then
    echo "  ${pad}  SKIP (file not found)"
    return 0
  fi

  expected="expected/${pad}.out"
  if [ ! -f "$expected" ]; then
    echo "  ${pad}  SKIP (no expected output)"
    return 0
  fi

  run_cmd=$(grep '^# RUN:' "$file" | head -1 | sed 's/^# RUN: //')
  if [ -z "$run_cmd" ]; then
    echo "  ${pad}  SKIP (no RUN line)"
    return 0
  fi

  # Run the exercise, capture stdout + stderr
  actual=$(eval "$run_cmd" 2>&1) || {
    echo "  ${pad}  FAIL (compile/runtime error)"
    echo "$actual" | sed 's/^/    /'
    return 1
  }

  # Normalize dynamic content for exercise 24
  if [ "$ex_num" -eq 24 ]; then
    actual=$(echo "$actual" | sed 's/"processedAt": [0-9.]\+/"processedAt": 0/g')
  fi

  # Compare: if expected is pure JSON, do semantic comparison
  if jq --slurp '.' < "$expected" > /dev/null 2>&1; then
    # Normalize both through jq with sorted keys
    if diff -u \
        <(jq --slurp --sort-keys '.' < "$expected") \
        <(echo "$actual" | jq --slurp --sort-keys '.' 2>/dev/null || echo "$actual") \
        > /tmp/jq-test-${pad}.diff 2>&1; then
      echo "  ${pad}  PASS"
      rm -f /tmp/jq-test-${pad}.diff
      return 0
    else
      echo "  ${pad}  FAIL"
      cat /tmp/jq-test-${pad}.diff | sed 's/^/    /'
      rm -f /tmp/jq-test-${pad}.diff
      return 1
    fi
  else
    # Direct text comparison (exercises with CSV / mixed output)
    if diff -u "$expected" <(echo "$actual") > /tmp/jq-test-${pad}.diff 2>&1; then
      echo "  ${pad}  PASS"
      rm -f /tmp/jq-test-${pad}.diff
      return 0
    else
      echo "  ${pad}  FAIL"
      cat /tmp/jq-test-${pad}.diff | sed 's/^/    /'
      rm -f /tmp/jq-test-${pad}.diff
      return 1
    fi
  fi
}

# --- Main ---
if [ $# -eq 0 ]; then
  # Test all
  fail=0
  for n in $(seq 1 24); do
    test_one "$n" || fail=$((fail + 1))
  done
  echo
  if [ "$fail" -eq 0 ]; then
    echo "All 24 exercises passed."
  else
    echo "$fail exercise(s) failed."
    exit 1
  fi
else
  test_one "$1"
fi
