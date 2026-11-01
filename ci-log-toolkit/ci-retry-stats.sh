#!/usr/bin/env bash
# Count repeated failure messages across many logs to spot flaky tests. Usage: ci-retry-stats.sh logs/*.log
grep -h -i -E 'fail|timeout|flaky' "$@" | sed -E 's/[0-9]+/N/g' | sort | uniq -c | sort -rn | head -20
