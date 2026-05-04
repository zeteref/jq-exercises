# Exercise 20 — --null-input, --arg, --argjson, $ARGS
# Solution
#
# RUN: jq -n --arg host localhost --argjson port 8080 --argjson debug true -f reference/20-null-input-args.jq

def solve:
  $ARGS.named
;

solve
