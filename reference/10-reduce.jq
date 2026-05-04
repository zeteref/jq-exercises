# Exercise 10 — reduce for Aggregation
# Solution
#
# RUN: jq -n -f reference/10-reduce.jq

def solve:
  reduce .[] as $n ([0, []];
    [.[0] + $n, .[1] + [.[0] + $n]]
  ) | .[1]
;

[10, 25, 5, 30] | solve
