# Exercise 24 — Capstone: Full ETL Pipeline
# Solution
#
# RUN: printf '{"level":"ERROR","type":"db","msg":"Connection timeout","details":{"code":500,"nested":{"reason":"timeout","retries":3}}}\n{"level":"INFO","type":"http","msg":"Request served","details":{"code":200}}\n{"level":"ERROR","type":"http","msg":"Not found","details":{"code":404}}\n{"level":"ERROR","type":"db","msg":"Deadlock","details":{"code":500}}\n{"level":"WARN","type":"db","msg":"Slow query","details":{"code":200,"nested":{"reason":"slow"}}}\n' | jq -n -f reference/24-capstone.jq

def flattenDetails:
  reduce to_entries[] as $e ({};
    if $e.value | type == "object" then
      . + ($e.value | flattenDetails)
    else
      . + {($e.key): $e.value}
    end
  );

def solve:
  [inputs | select(.level == "ERROR") | .details |= flattenDetails | .processedAt = now] as $errors
  | $errors,
    (["type", "count"] | @csv),
    ($errors | group_by(.type)[] | [.[0].type, length] | @csv)
;

solve
