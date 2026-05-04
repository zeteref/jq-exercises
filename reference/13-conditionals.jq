# Exercise 13 — Conditionals (if, elif, else) vs select
# Solution
#
# RUN: jq -n -f reference/13-conditionals.jq

def solve:
  map(if . > 0 then "positive"
      elif . < 0 then "negative"
      else "zero"
      end)
;

[-5, 0, 12, -3, 7] | solve
