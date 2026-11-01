#!/usr/bin/env bash
# Show the 15 largest blobs in repo history. Usage: git-big-files.sh
git rev-list --objects --all | git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' | awk '$1=="blob"{print $3"\t"$4}' | sort -rn | head -15
