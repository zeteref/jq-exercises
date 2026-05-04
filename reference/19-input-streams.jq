# Exercise 19 — Input Streams (inputs, --slurp vs multiple documents)
# Solution
#
# RUN: printf '{"val":10}\n{"val":20}\n{"val":30}\n' | jq -n -f reference/19-input-streams.jq

def solve:
  reduce inputs as $doc ({total: 0, count: 0};
    {total: (.total + $doc.val), count: (.count + 1)}
  )
;

solve
