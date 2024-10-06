# Shell-Scripting-Guide
A comprehensive guide to shell scripting from beginner to advanced levels, including examples of variable types, loops, functions, and error handling. Ideal for learning and practical scripting in Unix/Linux environments.

# String Test Operators in Shell Script

## Overview

This branch contains a script (`string.sh`) that demonstrates various string test operators available in Unix/Linux shell scripting. These operators allow you to compare, test, and manipulate strings as part of control flow in scripts.

## Script Usage

To run the script, ensure that it has executable permissions. You can set executable permissions using:

```bash
chmod +x string.sh
```

Then, you can execute the script:

```bash
./string.sh
```
The script will output results for different string test cases, such as:

-   Checking if a string is empty or non-empty.
-   Comparing two strings for equality or inequality.
-   Testing for greater/lesser string comparisons (ASCII-based).
-   Checking if a string contains a specific substring.
-   Combining multiple string test conditions.
-   Using regex for string pattern matching.
-   Case-sensitive string comparisons.

## String Test Operators

### Basic String Tests

-   `-n STRING` : Check if a string is non-empty.
-   `-z STRING` : Check if a string is empty.
-   `STRING1 = STRING2` : Check if two strings are equal.
-   `STRING1 != STRING2` : Check if two strings are not equal.

### Advanced String Tests

-   `[[ STRING1 < STRING2 ]]` : Check if STRING1 is less than STRING2 (ASCII comparison).
-   `[[ STRING1 > STRING2 ]]` : Check if STRING1 is greater than STRING2 (ASCII comparison).
-   `[[ STRING =~ REGEX ]]` : Perform pattern matching using regular expressions.
-   `[[ STRING == *SUBSTRING* ]]` : Check if a string contains a substring.

## Example Use Case

This script can be used as a reference or learning tool to understand how to work with string operations in shell scripting. You can also modify the script for custom string checks in your own projects.
