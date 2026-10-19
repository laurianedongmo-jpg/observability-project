#!/bin/sh
# Writes one JSON log line per second to /logs/app.log
mkdir -p /logs
i=0
while true; do
  i=$((i+1))
  if [ $((i % 5)) -eq 0 ]; then level=ERROR
  elif [ $((i % 2)) -eq 0 ]; then level=DEBUG
  else level=INFO
  fi
  printf '{"time":"%s","level":"%s","service":"shop","msg":"order processed","order_id":%s}\n' \
    "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$level" "$i" >> /logs/app.log
  sleep 1
done
