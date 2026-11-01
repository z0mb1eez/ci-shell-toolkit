#!/usr/bin/env bash
# Compare two logs (pass vs fail) ignoring timestamps/hashes/durations. Usage: ci-flaky-diff.sh pass.log fail.log
norm(){ sed -E 's/[0-9]{4}-[0-9]{2}-[0-9]{2}[T ][0-9:.]+Z?//g; s/[0-9a-f]{7,40}/<HASH>/g; s/[0-9]+(\.[0-9]+)?(ms|s)\b/<DUR>/g' "$1"; }
diff <(norm "$1") <(norm "$2")
