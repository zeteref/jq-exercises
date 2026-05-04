# Exercise 1 — Field Access, Optional Chaining (?), Pipes, and Multiple Outputs (,)
# Solution
#
# RUN: jq -n -f reference/01-field-access.jq

def solve:
  {name, city: .address?.city}, (.hobbies // [])
;

{"name":"Alice","age":30,"address":{"city":"Berlin"},"hobbies":["reading","hiking"]} | solve
