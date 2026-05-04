# Exercise 3 — Array Slicing and Negative Indices
# Solution
#
# RUN: jq -n -f reference/03-array-slicing.jq

def solve:
  {
    lastTwo:            .[-2:],
    firstThreeReversed: (.[:3] | reverse),
    everySecond:        [.[range(1; length; 2)]]
  }
;

["London", "Paris", "Berlin", "Madrid", "Rome", "Vienna"] | solve
