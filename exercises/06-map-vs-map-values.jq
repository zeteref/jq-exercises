# Week 1 | Exercise 6 — map vs map_values
#
# Problem:
#   Part A: Given an **object** of scores, add 10 to every value using map_values.
#   Part B: Given an **array** of numbers, produce BOTH:
#           1. an array with all numbers doubled (use map)
#           2. a stream of doubled numbers (one per line, use .[])
#
#   Your function should handle BOTH input types using: if type == "object" then ... else ...
#
# Hint: map(f) is for arrays, map_values(f) is for object values.
#
# Sample Input (array case):  [10, 20, 30]
# Expected:
#   [20,40,60]
#   20
#   40
#   60
#
# Sample Input (object case): {"math": 85, "physics": 92}
# Expected:                    {"math":95,"physics":102}
#
# Key takeaway: map (array) vs map_values (object) — pick the right tool for the type.
#
# RUN: jq -n -f exercises/06-map-vs-map-values.jq

def solve:
  # TODO: handle both cases with if type == "object" then ...
  .
;

[10, 20, 30] | solve
