#!/bin/bash

# Get filename from user
read -p "Enter the filename: " filename

# Check if file exists
if [ -f "$filename" ]; then
  echo "File exists."
else
  echo "File does not exist."
fi

# Get salary and calculate tax
read -p "Enter your salary: " salary
if [ "$salary" -lt 30000 ]; then
  echo "No tax."
elif [ "$salary" -le 40000 ]; then
  tax=$((salary * 10 / 100))
  echo "Tax is 10%: $tax"
else
  tax=$((salary * 15 / 100))
  echo "Tax is 15%: $tax"
fi

# Get age and categorize
read -p "Enter your age: " age
if [ "$age" -lt 13 ]; then
  echo "Child"
elif [ "$age" -le 19 ]; then
  echo "Teenager"
else
  echo "Adult"
fi
