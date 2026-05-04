# Exercise 5 — select for Filtering with Complex Conditions
# Solution
#
# RUN: jq -n -f reference/05-select-filter.jq

def solve:
  map(select(.price < 100 and (.rating >= 4 or .in_stock)))
;

[{"name":"Laptop","price":1200,"rating":4.8,"in_stock":false},{"name":"Mouse","price":25,"rating":4.2,"in_stock":true},{"name":"Keyboard","price":45,"rating":3.9,"in_stock":true}] | solve
