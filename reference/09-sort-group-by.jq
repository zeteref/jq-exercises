# Exercise 9 — sort, unique, group_by
# Solution
#
# RUN: jq -n -f reference/09-sort-group-by.jq

def solve:
  group_by(.cat)
  | map({cat: .[0].cat, avgPrice: (map(.price) | add / length)})
;

[{"cat":"electronics","price":120},{"cat":"books","price":15},{"cat":"electronics","price":80}] | solve
