#!/bin/sh

NOW=$(date +%Y-%m-%d_%H-%M)

"$(npm bin)/sugarcube" \
  -c pipelines/twitter-searches.json \
  --csv.filename csv/twitter-search-"$NOW".csv \
  -d \
  "$@" 2>&1 | tee -a logs/twitter-searches.log
