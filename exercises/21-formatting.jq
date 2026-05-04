# Week 3 | Exercise 21 — Formatting Output (@csv, @json, tojson/fromjson)
#
# Problem:
#   Convert an array of objects into:
#     1. Proper CSV with headers, formatted with @csv
#        (hint: first output the header row, then the data rows)
#     2. A pretty-printed JSON string using tojson
#
#   @csv takes an array and formats it as CSV.
#   Note: @csv requires arrays as input, not objects.
#
# Sample Input:
#   [{"name":"Alice","age":30},{"name":"Bob","age":25}]
# Expected:
#   "name","age"
#   "Alice",30
#   "Bob",25
#   (then also output the JSON string representation)
#
# Key takeaway: @csv etc. replace most "jq | csvkit" pipelines.
#
# RUN: jq -rn -f exercises/21-formatting.jq

def solve:
  # TODO: @csv and tojson — two separate outputs with comma
  .
;

[{"name":"Alice","age":30},{"name":"Bob","age":25}] | solve
