# Exercise 2 — Array/Object Iteration and Stream Splitting ([])
# Solution
#
# RUN: jq -n -f reference/02-stream-splitting.jq

def solve:
  (.[] | . * 2), [.[] | . * .]
;

[1, 2, 3, 4, 5] | solve
