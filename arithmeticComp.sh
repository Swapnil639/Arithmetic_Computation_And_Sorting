#!/bin/bash

echo "Enter value for a: "
read a

echo "Enter value for b: "
read b

echo "Enter value for c: "
read c

declare -A results

results["a + b * c"]=$(( a + b * c ))
results["a * b + c"]=$(( a * b + c ))
results["c + a / b"]=$(( c + a / b ))
results["a % b + c"]=$(( a % b + c ))

echo "Results:"
declare -a values
for key in "${!results[@]}"
do
    echo "$key = ${results[$key]}"
    values+=(${results[$key]})
done

echo "Values: ${values[@]}"
