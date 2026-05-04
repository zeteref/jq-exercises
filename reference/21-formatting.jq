# Exercise 21 — Formatting Output (@csv, @json, tojson/fromjson)
# Solution
#
# RUN: jq -rn -f reference/21-formatting.jq

def solve:
  (["name", "age"] | @csv),
  (.[] | [.name, .age] | @csv),
  (tojson)
;

[{"name":"Alice","age":30},{"name":"Bob","age":25}] | solve
