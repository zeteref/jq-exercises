# Week 3 | Exercise 24 — Capstone: Full ETL Pipeline
#
# Problem:
#   Write a complete ETL pipeline that:
#     1. Reads multiple NDJSON log entries from stdin
#     2. Filters down to entries with level == "ERROR"
#     3. Recursively flattens nested "details" into key-value pairs
#     4. Adds a "processedAt" timestamp (use now)
#     5. Outputs TWO things:
#        a. The processed error entries as pretty JSON
#        b. A CSV summary: error type + count per type
#
#   flattenDetails helper should walk nested objects under "details" and
#   produce a flat object (hint: use recurse or recursion).
#
#   This combines: inputs, reduce, select, recursion, updates, formatting.
#
# Sample Input (pipe these NDJSON lines):
#   {"level":"ERROR","type":"db","msg":"Connection timeout","details":{"code":500,"nested":{"reason":"timeout","retries":3}}}
#   {"level":"INFO","type":"http","msg":"Request served","details":{"code":200}}
#   {"level":"ERROR","type":"http","msg":"Not found","details":{"code":404}}
#   {"level":"ERROR","type":"db","msg":"Deadlock","details":{"code":500}}
#   {"level":"WARN","type":"db","msg":"Slow query","details":{"code":200,"nested":{"reason":"slow"}}}
#
# Expected (approximate — pretty JSON + CSV):
#   [
#     {"level":"ERROR","type":"db","msg":"Connection timeout","details":{"code":500,"reason":"timeout","retries":3},"processedAt":"..."},
#     {"level":"ERROR","type":"http","msg":"Not found","details":{"code":404},"processedAt":"..."},
#     {"level":"ERROR","type":"db","msg":"Deadlock","details":{"code":500},"processedAt":"..."}
#   ]
#   "type","count"
#   "db",2
#   "http",1
#
# Key takeaway: You can replace most Python/awk scripts with a single jq call.
#
# RUN: printf '{"level":"ERROR","type":"db","msg":"Connection timeout","details":{"code":500,"nested":{"reason":"timeout","retries":3}}}\n{"level":"INFO","type":"http","msg":"Request served","details":{"code":200}}\n{"level":"ERROR","type":"http","msg":"Not found","details":{"code":404}}\n{"level":"ERROR","type":"db","msg":"Deadlock","details":{"code":500}}\n{"level":"WARN","type":"db","msg":"Slow query","details":{"code":200,"nested":{"reason":"slow"}}}\n' | jq -n -f exercises/24-capstone.jq

def flattenDetails:
  # TODO: recursively flatten nested objects inside details into a flat object
  .
;

def solve:
  # TODO: reduce inputs, filter, flatten, add timestamp, output CSV summary
  .
;

solve
