# Week 1 | Exercise 2 — Array/Object Iteration and Stream Splitting ([])
#
# Problem:
#   Given an array of numbers, double every number and produce a **stream**
#   of doubled values (one per line, not collected). Then, in the same filter,
#   collect the squares into a single array. Output the stream FIRST, then the array.
#
#   .[] splits input into one output per element. The pipeline after it runs
#   once for each element independently. Wrapping in [ ] collects back into array.
#
# Sample Input:  [1, 2, 3, 4, 5]
# Expected (5 streamed values + 1 array):
#   2
#   4
#   6
#   8
#   10
#   [1,4,9,16,25]
#
# Key takeaway: [] splits the pipeline into multiple independent executions.
#               [ .[] | ... ] recombines them. This is jq's streaming core.
#
# RUN: jq -n -f exercises/02-stream-splitting.jq

def solve:
  # TODO: use .[] for streaming, then [ ... ] for collection
  .
;

[1, 2, 3, 4, 5] | solve
