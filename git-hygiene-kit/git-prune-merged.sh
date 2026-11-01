#!/usr/bin/env bash
# List (dry run) or delete local branches already merged into main. Usage: git-prune-merged.sh [--delete] [base=main]
base=${2:-$(git symbolic-ref --short HEAD)}
for b in $(git branch --merged "$base" --format='%(refname:short)' | grep -v -x -e "$base" -e master); do
  if [ "$1" = "--delete" ]; then git branch -d "$b"; else echo "would delete: $b"; fi
done
