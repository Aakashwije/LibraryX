#!/bin/bash
# simple-interest.sh
# Usage: ./simple-interest.sh principal rate(%) time(years)
if [ $# -lt 3 ]; then
  echo "Usage: $0 principal rate(%) time(years)"
  exit 1
fi
P=$1
R=$2
T=$3
SI=$(echo "scale=2; $P * $R * $T / 100" | bc)
TOTAL=$(echo "scale=2; $P + $SI" | bc)
echo "Principal: $P"
echo "Rate: $R%"
echo "Time: $T years"
echo "Simple Interest: $SI"
echo "Total Amount: $TOTAL"
