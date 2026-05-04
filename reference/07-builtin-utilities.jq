# Exercise 7 — Built-in Utilities (length, keys, has, in, to_entries, from_entries)
# Solution
#
# RUN: jq -n -f reference/07-builtin-utilities.jq

def solve:
  . as $orig
  | to_entries + [{key: "totalHobbies", value: ($orig.hobbies | length)}]
  | from_entries
;

{"name":"Emma","age":28,"hobbies":["chess","yoga","cooking"]} | solve
