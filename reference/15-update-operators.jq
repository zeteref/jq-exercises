# Exercise 15 — Update Operators (|=, +=, del, setpath)
# Solution
#
# RUN: jq -n -f reference/15-update-operators.jq

def solve:
  walk(if type == "object" then del(.secret) else . end)
  | .timestamp = 1720000000
;

{"user":{"name":"Bob","secret":123},"meta":{"secret":true}} | solve
