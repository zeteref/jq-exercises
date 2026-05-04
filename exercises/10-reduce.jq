# Week 2 | Exercise 10 — reduce for Aggregation
#
# Problem:
#   Compute a running total of sales using reduce.
#   Given [10, 25, 5, 30], produce [10, 35, 40, 70].
#
#   reduce syntax: reduce .[] as $item (initial; accumulator | update)
#   The accumulator can be a complex value (array, object, etc.).
#
# Sample Input:  [10, 25, 5, 30]
# Expected:      [10, 35, 40, 70]
#
# Key takeaway: reduce is how you implement sums, products, concatenations, running totals.
#
# RUN: jq -n -f exercises/10-reduce.jq

def solve:
  # TODO: reduce with accumulator array
  .
;

[10, 25, 5, 30] | solve
