# Week 3 | Exercise 23 — Combining Multiple Sources (self-join pattern)
#
# Problem:
#   You receive TWO separate JSON arrays (users and roles).
#   Enrich each user with their role name by joining on roleId -> id.
#
#   Use -s (--slurp) to read both arrays as one big array: [users, roles].
#   Assign the second element to $roles, then map over the first.
#
#   NOTE: Input comes from pipe with -s flag. The RUN command pipes the data.
#
# Sample Input (two arrays piped to jq -s):
#   [{"id":1,"roleId":10,"name":"Alice"},{"id":2,"roleId":20,"name":"Bob"}]
#   [{"id":10,"name":"admin"},{"id":20,"name":"user"}]
# Expected:
#   [
#     {"id":1,"roleId":10,"name":"Alice","role":"admin"},
#     {"id":2,"roleId":20,"name":"Bob","role":"user"}
#   ]
#
# Key takeaway: "Slurp two files and join" is extremely common in real-world jq.
#
# RUN: printf '[{"id":1,"roleId":10,"name":"Alice"},{"id":2,"roleId":20,"name":"Bob"}]\n[{"id":10,"name":"admin"},{"id":20,"name":"user"}]\n' | jq -s -f exercises/23-self-join.jq

def solve:
  # TODO: .[0] as users, .[1] as roles, then map/join
  .
;

solve
