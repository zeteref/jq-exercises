# Week 3 | Exercise 19 — Input Streams (inputs, --slurp vs multiple documents)
#
# Problem:
#   Process multiple JSON documents from stdin (NDJSON / JSON lines).
#   Each document has a "val" field. Sum all "val" fields and count
#   how many documents were processed. Output a single summary object.
#
#   inputs reads all remaining stdin documents as a stream.
#   Use reduce with inputs to accumulate across documents.
#   NOTE: This runs with -n (null input) and reads from pipe.
#
# Sample Input (pipe these 3 lines to jq):
#   {"val":10}
#   {"val":20}
#   {"val":30}
# Expected:      {"total":60,"count":3}
#
# Key takeaway: inputs + reduce is the pattern for processing NDJSON / streaming logs.
#
# RUN: printf '{"val":10}\n{"val":20}\n{"val":30}\n' | jq -n -f exercises/19-input-streams.jq

def solve:
  # TODO: reduce inputs as $doc ( ... )
  .
;

solve
