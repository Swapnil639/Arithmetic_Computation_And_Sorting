#!/bin/bash

echo "Enter value for a: "
read a

echo "Enter value for b: "
read b

echo "Enter value for c: "
read c

result=$(( c + a / b ))
echo "Result of c + a / b = $result"
