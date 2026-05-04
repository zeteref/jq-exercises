# Week 1 | Exercise 8 — Arithmetic, String Operations, and Math Built-ins
#
# Problem:
#   Given product data, calculate:
#     - "discountedPrice": price * (1 - discount/100), rounded to 2 decimals
#     - "slug": lowercase name with spaces replaced by hyphens ("Wireless Headphones" -> "wireless-headphones")
#
#   Use round, ascii_downcase, split, join. Arithmetic: + - * / %.
#
# Sample Input:  {"name":"Wireless Headphones","price":89.99,"discount":15}
# Expected:      {"name":"Wireless Headphones","slug":"wireless-headphones","discountedPrice":76.49}
#
# Key takeaway: String and math ops are first-class in jq; no external tools needed.
#
# RUN: jq -n -f exercises/08-arithmetic-strings.jq

def solve:
  # TODO: arithmetic + string ops
  .
;

{"name":"Wireless Headphones","price":89.99,"discount":15} | solve
