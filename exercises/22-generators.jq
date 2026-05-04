# Week 3 | Exercise 22 — Generators (range, recurse, limit, first/last)
#
# Problem:
#   Generate the first 10 Fibonacci numbers (0-indexed: 0, 1, 1, 2, ...) and output:
#     1. The full collected array
#     2. The last 3 numbers as separate streamed values
#
#   Use a generator pattern with recurse.
#   Hint: recurse([1,0]; [.[0]+.[1], .[0]]) | .[1]
#
# Sample Output:
#   [0,1,1,2,3,5,8,13,21,34]
#   13
#   21
#   34
#
# Key takeaway: Generators + limit/first give infinite-stream control in finite space.
#
# RUN: jq -n -f exercises/22-generators.jq

def solve:
  # TODO: generate Fibonacci, collect array, stream last 3
  .
;

null | solve
