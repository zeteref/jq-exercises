# Week 3 | Exercise 20 — --null-input, --arg, --argjson, $ARGS
#
# Problem:
#   Build a config object from command-line arguments.
#   The invocation passes --arg host localhost --argjson port 8080 --argjson debug true.
#   Your solve function should access $ARGS.named to build the output.
#
#   $ARGS.named is an object with all --arg/--argjson values.
#   $ARGS.positional has positional arguments.
#   --null-input (-n) starts with null instead of waiting for stdin.
#
# Sample Invocation:
#   jq -n --arg host localhost --argjson port 8080 --argjson debug true \
#     -f exercises/20-null-input-args.jq
# Expected:      {"host":"localhost","port":8080,"debug":true}
#
# Key takeaway: Command-line arguments turn jq into a full templating engine.
#
# RUN: jq -n --arg host localhost --argjson port 8080 --argjson debug true -f exercises/20-null-input-args.jq

def solve:
  # TODO: use $ARGS.named
  .
;

solve
