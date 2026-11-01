#!/usr/bin/env bash
# Commit counts per author for a path. Usage: git-who-touched.sh path
git log --format='%an' -- "${1:?path}" | sort | uniq -c | sort -rn
