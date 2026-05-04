# Exercise 12 — Functions with Parameters and Variables ($var)
# Solution
#
# RUN: jq -n -f reference/12-function-parameters.jq

def addTax($rate):
  map(.price *= (1 + $rate))
;

def solve:
  addTax(0.2)
;

[{"price":100},{"price":200}] | solve
