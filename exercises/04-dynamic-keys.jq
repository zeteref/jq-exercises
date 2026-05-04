# Week 1 | Exercise 4 — Object & Array Construction (Static + Dynamic Keys)
#
# Problem:
#   From a flat object, create a new structured object with:
#     - "fullName":  a dynamic key, joining first and last name
#     - "tags":      an array from splitting the `bio` field by spaces
#
#   Dynamic keys use parentheses: { (expr): value }.
#   Static keys can omit quotes: { key: value }.
#
# Sample Input:  {"first": "John", "last": "Doe", "bio": "developer runner photographer"}
# Expected:      {"fullName": "John Doe", "tags": ["developer","runner","photographer"]}
#
# Key takeaway: Dynamic keys with parentheses are the idiomatic way to build JSON programmatically.
#
# RUN: jq -n -f exercises/04-dynamic-keys.jq

def solve:
  # TODO: dynamic key + split
  .
;

{"first": "John", "last": "Doe", "bio": "developer runner photographer"} | solve
