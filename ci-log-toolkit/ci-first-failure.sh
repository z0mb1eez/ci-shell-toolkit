#!/usr/bin/env bash
# Print the first error in a CI log with 5 lines of context. Usage: ci-first-failure.sh build.log
grep -n -i -m1 -B5 -A5 -E 'error|failed|exception|traceback|fatal' "${1:?log file}"
