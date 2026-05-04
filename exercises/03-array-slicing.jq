# Week 1 | Exercise 3 — Array Slicing and Negative Indices
#
# Problem:
#   Given an array of cities, return an object with:
#     - "lastTwo":           the last 2 cities
#     - "firstThreeReversed": the first 3 cities in reverse order
#     - "everySecond":        every 2nd city starting from index 1
#
#   Use Python-like slicing [start:end] and negative indices.
#   .[-3:] is last 3 elements. [::2] for every 2nd.
#
# Sample Input:  ["London", "Paris", "Berlin", "Madrid", "Rome", "Vienna"]
# Expected:
#   {
#     "lastTwo": ["Rome","Vienna"],
#     "firstThreeReversed": ["Berlin","Paris","London"],
#     "everySecond": ["Paris","Madrid","Vienna"]
#   }
#
# Key takeaway: Negative indices and slicing are zero-copy and efficient.
#
# RUN: jq -n -f exercises/03-array-slicing.jq

def solve:
  # TODO: use slicing and reverse
  .
;

["London", "Paris", "Berlin", "Madrid", "Rome", "Vienna"] | solve
