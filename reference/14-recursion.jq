# Exercise 14 — Advanced Recursion: Tree Traversal
# Solution
#
# RUN: jq -n -f reference/14-recursion.jq

def solve:
  [recurse(.replies[]?) | .text]
;

{"text":"A","replies":[{"text":"B","replies":[{"text":"C"}]}]} | solve
