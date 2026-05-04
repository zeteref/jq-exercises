# Exercise 23 — Combining Multiple Sources (self-join pattern)
# Solution
#
# RUN: printf '[{"id":1,"roleId":10,"name":"Alice"},{"id":2,"roleId":20,"name":"Bob"}]\n[{"id":10,"name":"admin"},{"id":20,"name":"user"}]\n' | jq -s -f reference/23-self-join.jq

def solve:
  . as [$users, $roles]
  | $users | map(
      . as $u | . + {role: ($roles[] | select(.id == $u.roleId) | .name)}
    )
;

solve
