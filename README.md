# Shell-Scripting-Guide
A comprehensive guide to shell scripting from beginner to advanced levels, including examples of variable types, loops, functions, and error handling. Ideal for learning and practical scripting in Unix/Linux environments.

# Example Shell Script to Demonstrate Variable Types

## Overview

This repository contains a shell script that demonstrates various types of variables used in shell scripting, from basic strings and integers to more advanced concepts like arrays, associative arrays, environment variables, and special variables.

The purpose of this script is to help users understand how different types of variables work in shell scripting, making it a great learning tool for both beginners and more advanced users.

## Features

- **String Variables**: Storing and manipulating text.
- **Integer Variables**: Performing arithmetic operations on integers.
- **Floating-Point Arithmetic**: Using `bc` to handle non-integer numbers.
- **Constant Variables**: Declaring immutable variables using `readonly`.
- **Arrays**: Storing multiple values and accessing them by index.
- **Associative Arrays**: Using key-value pairs (Bash 4.0+).
- **Environment Variables**: Exporting variables for use by child processes.
- **Special Variables**: Handling script arguments, process IDs, and more.

## Files

- `variable_types.sh` - The main script demonstrating all common variable types in shell scripting.

## Usage

### 1. Clone the Repository

To get started, clone the repository to your local machine:

```bash
git clone https://github.com/ArunkumarSelvaraj-M/Shell-Scripting-Guide.git
```

### 2. Navigate to the Repository

Change to the directory containing the script:

```bash
cd Shell-Scripting-Guide
git checkout variables
```

### 3. Make the Script Executable

Ensure the script has execute permissions:

```bash
chmod +x variable_types.sh
```

### 4. Run the Script

Execute the script to see the different variable types in action:

```bash
./variable_types.sh arg1 arg2
```

You can replace `arg1` and `arg2` with any sample values to test the special variables section.

## Example Output

When you run the script, you will see output similar to the following:

```yaml
String Variable: Hello, World!
Integer Addition: 10 + 20 = 30
Floating Point Addition: 5.5 + 3.1 = 8.6
Constant Variable: PI = 3.14159
First fruit: apple
All fruits: apple banana cherry
After adding orange: apple banana cherry orange
Name: John
Age: 25
City: New York
Environment Variable: Shell Scripting
Script Name: ./variable_types.sh
First Argument: arg1
Number of Arguments: 2
Process ID: 12345
Last Command Exit Status: 0
```

## Explanation of Key Concepts

- String Variables: Simple text strings stored in variables.
- Integer Arithmetic: Demonstrates basic arithmetic with integers.
- Floating-Point Arithmetic: Uses bc for non-integer calculations since Bash does not natively support floating-point arithmetic.
- Constant Variables: Declared using readonly, making them immutable.
- Arrays: Demonstrates how to declare and use indexed arrays.
- Associative Arrays: Demonstrates key-value pairs (requires Bash 4.0+).
- Environment Variables: Shows how to export variables to child processes.
- Special Variables: Includes $0 (script name), $1 (first argument), $# (number of arguments), $$ (process ID), and $? (last command exit status).
## Contributing

 If you want to contribute to this project, feel free to fork the repository, make improvements, and submit a pull request. Contributions are welcome!

## Contact
For questions or suggestions, please reach out via email: `arunkumarselvaraj.m@gmail.com.


