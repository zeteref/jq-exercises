# Week 2 | Exercise 9 — sort, unique, group_by
#
# Problem:
#   Group products by category ("cat") using group_by, then compute
#   the average price per group. Return an array of {cat, avgPrice} objects.
#
#   group_by(.field) returns an array of arrays, one per unique value.
#   map on top lets you transform each group.
#
# Sample Input:
#   [
#     {"cat":"electronics","price":120},
#     {"cat":"books","price":15},
#     {"cat":"electronics","price":80}
#   ]
# Expected:
#   [{"cat":"books","avgPrice":15},{"cat":"electronics","avgPrice":100}]
#
# Key takeaway: group_by + map is the jq way to do SQL GROUP BY.
#
# RUN: jq -n -f exercises/09-sort-group-by.jq

def solve:
  # TODO: group_by + map
  .
;

[{"cat":"electronics","price":120},{"cat":"books","price":15},{"cat":"electronics","price":80}] | solve
