# Exercise 6 — map vs map_values
# Solution
#
# RUN: jq -n -f reference/06-map-vs-map-values.jq

def solve:
  if type == "object" then
    map_values(. + 10)
  else
    (map(. * 2)), (.[] | . * 2)
  end
;

[10, 20, 30] | solve
