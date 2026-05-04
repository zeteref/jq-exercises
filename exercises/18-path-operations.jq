# Week 3 | Exercise 18 — path, getpath, setpath, delpaths
#
# Problem:
#   Given an object and a list of dot-separated paths to delete, remove those
#   fields. Paths are provided as strings like "b.c" (meaning .b.c).
#
#   Use delpaths which takes an array of path arrays. Split the path strings
#   into their components first.
#
# Sample Input:         {"a":1,"b":{"c":2,"d":3},"x":4}
# Paths to delete:       ["b.c", "x"]
# Expected:              {"a":1,"b":{"d":3}}
#
# Key takeaway: Paths turn structural surgery into data-driven operations.
#
# RUN: jq -n -f exercises/18-path-operations.jq

def solve:
  # TODO: convert path strings to path arrays, then use delpaths
  .
;

{"a":1,"b":{"c":2,"d":3},"x":4} | solve
