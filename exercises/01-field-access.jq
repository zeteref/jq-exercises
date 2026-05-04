# Week 1 | Exercise 1 — Field Access, Optional Chaining (?), Pipes, and Multiple Outputs (,)
#
# Problem:
#   Given a person object that may or may not have `address` and `phone`,
#   extract `name`, `city` (safely, without error if `address` is missing),
#   and also produce a second output that is just the `hobbies` array
#   (or empty array if missing). Return two separate JSON values.
#
# Sample Input:  {"name":"Alice","age":30,"address":{"city":"Berlin"},"hobbies":["reading","hiking"]}
# Expected:
#   {"name":"Alice","city":"Berlin"}
#   ["reading","hiking"]
#
# Key takeaway: Comma `,` creates multiple outputs; `?` prevents errors on missing keys.
#
# RUN: jq -n -f exercises/01-field-access.jq

def solve:
  # TODO: produce the two outputs using . , ? and |
  .
;

{"name":"Alice","age":30,"address":{"city":"Berlin"},"hobbies":["reading","hiking"]} | solve
