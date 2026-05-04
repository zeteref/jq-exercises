# Exercise 11 — Defining Simple Custom Functions
# Solution
#
# RUN: jq -n -f reference/11-custom-functions.jq

def double: . * 2;

def triple: . * 3;

def solve:
  map(if . % 2 == 0 then triple else . end)
;

[1, 2, 3, 4, 5] | solve
