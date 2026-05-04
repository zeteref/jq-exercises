# Exercise 8 — Arithmetic, String Operations, and Math Built-ins
# Solution
#
# RUN: jq -n -f reference/08-arithmetic-strings.jq

def solve:
  {
    name,
    slug:            (.name | ascii_downcase | gsub(" "; "-")),
    discountedPrice: ((.price * (1 - .discount / 100) * 100 | round) / 100)
  }
;

{"name":"Wireless Headphones","price":89.99,"discount":15} | solve
