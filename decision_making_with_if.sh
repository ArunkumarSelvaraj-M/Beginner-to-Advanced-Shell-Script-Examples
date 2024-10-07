#!/bin/bash

# 1. Basic if statement
num=10
if [ "$num" -eq 10 ]; then
    echo "The number is 10."
fi

echo ""

# 2. if-else statement
num=20
if [ "$num" -eq 10 ]; then
    echo "The number is 10."
else
    echo "The number is not 10."
fi

echo ""

# 3. if-elif-else statement
num=30
if [ "$num" -eq 10 ]; then
    echo "The number is 10."
elif [ "$num" -eq 20 ]; then
    echo "The number is 20."
else
    echo "The number is neither 10 nor 20."
fi

echo ""

# 4. String comparison
str="hello"
if [ "$str" = "hello" ]; then
    echo "String matches hello."
elif [ "$str" != "hello" ]; then
    echo "String does not match."
fi

echo ""

# 5. File tests
file="/path/to/file"
if [ -f "$file" ]; then
    echo "File exists and is a regular file."
elif [ -d "$file" ]; then
    echo "It's a directory."
else
    echo "File does not exist."
fi

echo ""

# 6. Arithmetic comparison
num=50
if [ "$num" -gt 40 ]; then
    echo "Number is greater than 40."
else
    echo "Number is less than or equal to 40."
fi

echo ""

# 7. Compound conditions with AND (&&)
num=25
if [ "$num" -ge 10 ] && [ "$num" -le 50 ]; then
    echo "Number is between 10 and 50."
fi

echo ""

# 8. Compound conditions with OR (||)
if [ "$num" -eq 10 ] || [ "$num" -eq 20 ]; then
    echo "Number is either 10 or 20."
else
    echo "Number is neither 10 nor 20."
fi

echo ""

# 9. Nested if statements
num=25
if [ "$num" -gt 10 ]; then
    if [ "$num" -lt 30 ]; then
        echo "Number is between 10 and 30."
    fi
fi

echo ""

# 10. Regular expressions
str="abc123"
if [[ "$str" =~ ^[a-z]+[0-9]+$ ]]; then
    echo "String contains letters followed by numbers."
fi

echo ""

# 11. Functions with if
check_even_odd() {
    if [ $(( $1 % 2 )) -eq 0 ]; then
        echo "$1 is even."
    else
        echo "$1 is odd."
    fi
}

check_even_odd 5
check_even_odd 10

echo ""
