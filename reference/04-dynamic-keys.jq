# Exercise 4 — Object & Array Construction (Static + Dynamic Keys)
# Solution
#
# RUN: jq -n -f reference/04-dynamic-keys.jq

def solve:
  {
    fullName: "\(.first) \(.last)",
    tags:     .bio / " "
  }
;

{"first": "John", "last": "Doe", "bio": "developer runner photographer"} | solve
