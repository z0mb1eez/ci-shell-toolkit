#!/usr/bin/env bash
# List branches by last commit date, oldest first. Usage: git-stale-branches.sh
git for-each-ref --sort=committerdate --format='%(committerdate:short) %(refname:short) %(authorname)' refs/heads refs/remotes
