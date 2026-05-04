# Week 2 | Exercise 16 — Regex (test, match, capture, gsub)
#
# Problem:
#   Given a "bio" field containing text with emails and phone numbers:
#     1. Extract all email addresses into an "emails" array
#     2. Replace phone numbers (pattern: \d{3}-\d{4}) with "[REDACTED]"
#        in a new "bio" field (keep the original bio text but with redacted phone)
#
#   Use [scan] or [match] + capture for extraction.
#   Use gsub for replacement.
#
# Sample Input:  {"bio":"Contact me at alice@example.com or 555-1234"}
# Expected:      {"emails":["alice@example.com"],"bio":"Contact me at alice@example.com or [REDACTED]"}
#
# Key takeaway: jq's regex is powerful enough for most data-cleaning tasks.
#
# RUN: jq -n -f exercises/16-regex.jq

def solve:
  # TODO: regex extraction + gsub replacement
  .
;

{"bio":"Contact me at alice@example.com or 555-1234"} | solve
