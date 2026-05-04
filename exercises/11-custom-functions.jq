# Week 2 | Exercise 11 — Defining Simple Custom Functions
#
# Problem:
#   Write two helper functions `double` (multiply by 2) and `triple` (multiply by 3).
#   Then use them in `solve` to triple every even number, leaving odds unchanged.
#   Use map + if-else inside solve, calling your helpers.
#
# Sample Input:  [1, 2, 3, 4, 5]
# Expected:      [1, 6, 3, 12, 5]
#
# Key takeaway: Custom functions make jq code readable and maintainable.
#
# RUN: jq -n -f exercises/11-custom-functions.jq

def double:
  # TODO: multiply by 2
  .
;

def triple:
  # TODO: multiply by 3
  .
;

def solve:
  # TODO: use helpers inside map
  .
;

[1, 2, 3, 4, 5] | solve
