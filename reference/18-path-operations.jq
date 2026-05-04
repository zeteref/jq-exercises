# Exercise 18 — path, getpath, setpath, delpaths
# Solution
#
# RUN: jq -n -f reference/18-path-operations.jq

def solve:
  delpaths(["b.c", "x"] | map(split(".")))
;

{"a":1,"b":{"c":2,"d":3},"x":4} | solve
