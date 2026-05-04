# Week 3 | Exercise 17 — Error Handling (try, ?, // alternative)
#
# Problem:
#   Safely parse an array of possibly-invalid JSON strings.
#   For each string: try to parse it with fromjson, fall back to null on failure.
#
#   ? postfix turns errors into null (empty output).
#   // provides alternative if the left side produces nothing.
#   try ... catch gives explicit error handling.
#
# Sample Input:  ["{\"valid\":true}", "invalid json", "{\"ok\":42}"]
# Expected:      [{"valid":true},null,{"ok":42}]
#
# Key takeaway: ? and try make robust pipelines that never crash on bad data.
#
# RUN: jq -n -f exercises/17-error-handling.jq

def solve:
  # TODO: map with try/fromjson ?
  .
;

["{\"valid\":true}", "invalid json", "{\"ok\":42}"] | solve
