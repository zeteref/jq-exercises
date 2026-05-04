# Week 1 | Exercise 5 — select for Filtering with Complex Conditions
#
# Problem:
#   Filter an array of products: keep only those with price < 100
#   AND (rating >= 4 OR in_stock == true).
#
#   select(bool_expr) keeps only inputs where expression is truthy.
#   Use and, or, not for boolean logic.
#
# Sample Input:
#   [
#     {"name":"Laptop","price":1200,"rating":4.8,"in_stock":false},
#     {"name":"Mouse","price":25,"rating":4.2,"in_stock":true},
#     {"name":"Keyboard","price":45,"rating":3.9,"in_stock":true}
#   ]
# Expected:
#   [
#     {"name":"Mouse","price":25,"rating":4.2,"in_stock":true},
#     {"name":"Keyboard","price":45,"rating":3.9,"in_stock":true}
#   ]
#
# Key takeaway: select is the idiomatic filter; wrap with map to keep array structure.
#
# RUN: jq -n -f exercises/05-select-filter.jq

def solve:
  # TODO: .[] | select( ... )  or  map(select(...))
  .
;

[{"name":"Laptop","price":1200,"rating":4.8,"in_stock":false},{"name":"Mouse","price":25,"rating":4.2,"in_stock":true},{"name":"Keyboard","price":45,"rating":3.9,"in_stock":true}] | solve
