# Week 2 | Exercise 12 — Functions with Parameters and Variables ($var)
#
# Problem:
#   Write a function `addTax($rate)` that takes a tax rate parameter and adds
#   tax to every price in an array of products.
#   For each product: price = price * (1 + $rate).
#
#   `solve` should pipe the tax rate (0.2 = 20%) into a call to addTax.
#   The input to solve is the products array.
#
# Sample Input:  [{"price":100},{"price":200}]
# Expected:      [{"price":120},{"price":240}]
#
# Key takeaway: Parameters + `as` give full lexical scoping.
#
# RUN: jq -n -f exercises/12-function-parameters.jq

def addTax($rate):
  # TODO: map over products, multiply price by (1 + $rate)
  .
;

def solve:
  # TODO: pipe 0.2 into addTax
  .
;

[{"price":100},{"price":200}] | solve
