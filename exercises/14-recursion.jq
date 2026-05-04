# Week 2 | Exercise 14 — Advanced Recursion: Tree Traversal
#
# Problem:
#   Flatten a deeply nested comments tree into a flat array of all comment texts.
#   Each node has "text" and optional "replies" (array of child nodes).
#
#   Use recursion: collect current node's text, then recursively process children.
#   Alternative: use recurse or walk (jq 1.6+).
#
# Sample Input:  {"text":"A","replies":[{"text":"B","replies":[{"text":"C"}]}]}
# Expected:      ["A","B","C"]
#
# Key takeaway: Recursion handles JSON trees (ASTs, nested menus, comment threads, etc.).
#
# RUN: jq -n -f exercises/14-recursion.jq

def solve:
  # TODO: recursion or walk — collect all .text values depth-first
  .
;

{"text":"A","replies":[{"text":"B","replies":[{"text":"C"}]}]} | solve
