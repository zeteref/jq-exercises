# Exercise 22 — Generators (range, recurse, limit, first/last)
# Solution
#
# RUN: jq -n -f reference/22-generators.jq

def solve:
  [limit(10; [0, 1] | recurse([.[1], .[0] + .[1]]) | .[0])] as $fibs
  | $fibs, $fibs[-3:][]
;

null | solve
