# Exercise 17 — Error Handling (try, ?, // alternative)
# Solution
#
# RUN: jq -n -f reference/17-error-handling.jq

def solve:
  map(fromjson? // null)
;

["{\"valid\":true}", "invalid json", "{\"ok\":42}"] | solve
