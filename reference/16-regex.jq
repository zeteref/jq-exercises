# Exercise 16 — Regex (test, match, capture, gsub)
# Solution
#
# RUN: jq -n -f reference/16-regex.jq

def solve:
  {
    emails: [.bio | scan("[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}")],
    bio:    .bio | gsub("\\d{3}-\\d{4}"; "[REDACTED]")
  }
;

{"bio":"Contact me at alice@example.com or 555-1234"} | solve
