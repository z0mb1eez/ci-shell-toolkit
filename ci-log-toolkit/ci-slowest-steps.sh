#!/usr/bin/env bash
# List lines carrying durations, slowest first (seconds/ms). Usage: ci-slowest-steps.sh build.log
grep -E '[0-9]+(\.[0-9]+)?(ms|s)' "${1:?log file}" | awk '{match($0,/[0-9]+(\.[0-9]+)?(ms|s)/);v=substr($0,RSTART,RLENGTH);n=v+0;if(v~/ms$/)n/=1000;print n"\t"$0}' | sort -rn | head -20
