#!/bin/bash
# Demonstrating different variable types in shell scripting.

#---------------------#
# 1. String Variables #
#---------------------#

greeting="Hello, World!"
echo "String Variable: $greeting"

# Output:
# String Variable: Hello, World!

#---------------------#
# 2. Integer Variables #
#---------------------#

num1=10
num2=20
sum=$((num1 + num2))
echo "Integer Addition: $num1 + $num2 = $sum"

# Output:
# Integer Addition: 10 + 20 = 30

#---------------------#
# 3. Floating Point Variables (Using `bc`) #
#---------------------#

num1=5.5
num2=3.1
sum=$(echo "$num1 + $num2" | bc)
echo "Floating Point Addition: $num1 + $num2 = $sum"

# Output:
# Floating Point Addition: 5.5 + 3.1 = 8.6

#---------------------#
# 4. Constant Variables (Readonly) #
#---------------------#

readonly PI=3.14159
echo "Constant Variable: PI = $PI"

# Output:
# Constant Variable: PI = 3.14159

# Uncomment the line below to see the error due to readonly variable
# PI=3.14  # Error: PI: readonly variable

#---------------------#
# 5. Array Variables #
#---------------------#

fruits=("apple" "banana" "cherry")
echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"

# Output:
# First fruit: apple
# All fruits: apple banana cherry

# Adding to the array
fruits[3]="orange"
echo "After adding orange: ${fruits[@]}"

# Output:
# After adding orange: apple banana cherry orange

#---------------------#
# 6. Associative Arrays (Requires Bash 4.0+) #
#---------------------#

declare -A person
person[name]="John"
person[age]=25
person[city]="New York"

echo "Name: ${person[name]}"
echo "Age: ${person[age]}"
echo "City: ${person[city]}"

# Output:
# Name: John
# Age: 25
# City: New York

#---------------------#
# 7. Environment Variables #
#---------------------#

# Setting an environment variable (only available in this script)
export MY_ENV_VAR="Shell Scripting"
echo "Environment Variable: $MY_ENV_VAR"

# Output:
# Environment Variable: Shell Scripting

#---------------------#
# 8. Special Variables #
#---------------------#

echo "Script Name: $0"
echo "First Argument: $1"
echo "Number of Arguments: $#"
echo "Process ID: $$"
echo "Last Command Exit Status: $?"

# Example (assuming the script is called with arguments like ./script.sh arg1 arg2):
# Output:
# Script Name: ./script.sh
# First Argument: arg1
# Number of Arguments: 2
# Process ID: 12345
# Last Command Exit Status: 0
