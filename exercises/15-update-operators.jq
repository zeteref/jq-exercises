# Week 2 | Exercise 15 — Update Operators (|=, +=, del, setpath)
#
# Problem:
#   Given a nested object:
#     1. Add a "timestamp" field at the top level with value 1720000000
#     2. Remove ALL "secret" fields at any nesting level (hint: walk)
#
#   |= is "update in place".  del(path) removes fields.
#   Use walk (jq 1.8+) or recurse for deep deletion.
#
# Sample Input:  {"user":{"name":"Bob","secret":123},"meta":{"secret":true}}
# Expected:      {"user":{"name":"Bob"},"meta":{},"timestamp":1720000000}
#
# Key takeaway: Update operators are jq's mutation syntax (immutable under the hood).
#
# RUN: jq -n -f exercises/15-update-operators.jq

def solve:
  # TODO: use walk (or recurse) + del for deep deletion, then += for timestamp
  .
;

{"user":{"name":"Bob","secret":123},"meta":{"secret":true}} | solve
