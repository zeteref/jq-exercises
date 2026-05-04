# Week 2 | Exercise 13 — Conditionals (if, elif, else) vs select
#
# Problem:
#   Categorize each number in an array as "positive", "negative", or "zero".
#   Return an array of these string labels.
#
#   Use if-then-elif-else-end inside map.
#   Remember: if is for transformation, select is for filtering.
#
# Sample Input:  [-5, 0, 12, -3, 7]
# Expected:      ["negative","zero","positive","negative","positive"]
#
# Key takeaway: Use if for transformation, select for filtering.
#
# RUN: jq -n -f exercises/13-conditionals.jq

def solve:
  # TODO: if-elif-else inside map
  .
;

[-5, 0, 12, -3, 7] | solve
