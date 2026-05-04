# jq Mastery Exercises

24 progressive exercises from semi-experienced to advanced jq.
Do **1 per day** (or 2 if you're on a roll).

## How it works

1. Open the next numbered file in `exercises/`
2. Read the problem description and comments at the top
3. Fill in the `def solve:` body
4. Run: `./run.sh <number>`

```
$ ./run.sh 1        # runs exercises/01-field-access.jq
```

Each file is self-contained — sample input is embedded, expected output is in the
header comments, and `run.sh` reads the exact invocation from the RUN line in the file
(handling any piping, `--argjson`, or `-s` flags automatically).

## Structure

| Week | Exercises | Focus |
|------|-----------|-------|
| 1 | 01–08 | Streams, slicing, construction, select, map, utilities, arithmetic |
| 2 | 09–16 | Grouping, reduce, custom functions, parameters, recursion, updates, regex |
| 3 | 17–24 | Error handling, paths, `inputs`, `$ARGS`, formatting, generators, joins, capstone |

## Reference solutions

Each exercise has an idiomatic reference solution in `reference/`.
Compare your work against it after solving:

```
$ ./reference/run.sh 5    # shows the reference answer for exercise 5
```

The reference solutions are written to demonstrate idiomatic jq — the way
experienced users actually write filters. Same runner, same output format, just
invoked from the `reference/` directory.

## Prerequisites

- jq 1.7+
- You know the basics (`.`, `|`, `.field`, basic `map`/`select`)

## Tip

Keep the files with your solved `def solve:` implementations — they become your
personal jq library.
