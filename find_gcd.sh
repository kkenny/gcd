#!/bin/bash

a=$1  # $1 is the first argument passed to the command
b=$2  # $2 is the second argument passed to the command

# A function to be called if we need help
print_help() {
  echo "Usage: ${0} num1 num2"
  echo
  echo "This tool finds the greatest common divisor of two numbers."

  exit 1
}

[[ -z $a ]] && print_help  # Call the help function if $a is empty
[[ -z $b ]] && print_help  # Call the help function if $b is empty

c=0 # initialize a counter

# Start a loop until $b = 0
while [[ $b -ne 0 ]]; do

  c=$(($c+1)) # incriment the counter

  if [[ $a -gt $b ]]; then
    a=$(($a-b))
    echo "${c}) a: $a  b: $b"
  else
    b=$(($b-a))
    echo "${c}) a: $a  b: $b"
  fi

done

# Print the result after $b = 0
echo
echo "The GCD for $1 and $2 is: ${a}"
echo "It took $c operations to determine this"
