# Week 1 | Exercise 7 — Built-in Utilities (length, keys, has, in, to_entries, from_entries)
#
# Problem:
#   Convert a person object into an array of entries (to_entries),
#   then add a new synthetic entry with key "totalHobbies" and value = length of hobbies array,
#   then convert back to object (from_entries).
#
#   to_entries turns {a:1,b:2} into [{"key":"a","value":1},{"key":"b","value":2}].
#   from_entries does the reverse.
#
# Sample Input:  {"name":"Emma","age":28,"hobbies":["chess","yoga","cooking"]}
# Expected:      {"name":"Emma","age":28,"hobbies":["chess","yoga","cooking"],"totalHobbies":3}
#
# Key takeaway: to_entries/from_entries is the canonical way to transform object keys/values uniformly.
#
# RUN: jq -n -f exercises/07-builtin-utilities.jq

def solve:
  # TODO: to_entries + add entry + from_entries
  .
;

{"name":"Emma","age":28,"hobbies":["chess","yoga","cooking"]} | solve
