#!/usr/bin/env bash

iterations=10
logfile=/tmp/vim-profiler.log

declare -a results

for _ in $(seq 1 "$iterations"); do
  nvim --startuptime "$logfile" -c 'q'
  latest=$(awk '/./{line=$0} END{print line}' "$logfile" | awk '{print $1}')
  results+=("$latest")
done

total=0
for result in "${results[@]}"; do
  total=$(echo "$total" + "$result" | bc -l)
done

average=$(echo "$total" / "$iterations" | bc -l)
echo "$average"
exit 0
