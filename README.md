# Shell-Scripting-Guide
A comprehensive guide to shell scripting from beginner to advanced levels, including examples of variable types, loops, functions, and error handling. Ideal for learning and practical scripting in Unix/Linux environments.

# Decision Making with `if` Statements in Bash

This repository contains a script that demonstrates decision-making in bash using `if` statements. The script includes various types of condition checks, ranging from basic `if` statements to complex scenarios involving string comparisons, file tests, arithmetic comparisons, compound conditions, and functions.

## File Structure

- **decision_making_with_if.sh**: This is the main script file that demonstrates how to perform decisions in bash with several different tests.

## Features

- **Basic `if` Statements**: Simple conditions using numbers and strings.
- **if-else Statements**: Handling alternate conditions.
- **if-elif-else Statements**: Checking multiple conditions.
- **String Comparisons**: Compare and evaluate string values.
- **File Tests**: Check properties of files such as existence, type, and permissions.
- **Arithmetic Comparisons**: Numeric comparisons using operators such as `-eq`, `-gt`, and `-lt`.
- **Compound Conditions**: Combining conditions with AND (`&&`) and OR (`||`).
- **Nested if Statements**: Using `if` within another `if` to evaluate multiple conditions.
- **Regular Expressions**: Matching string patterns using regex.
- **Functions with if Statements**: Demonstrating how to use functions for decision making.

## How to Use

1. Make the script executable:

  ```bash
  chmod +x decision_making_with_if.sh
  ```

2. Run the script:

  ```bash
  ./decision_making_with_if.sh
  ```

## Example Output

The script will display various messages based on the conditions defined in each test. For example, it will check for string equality, file properties, and evaluate mathematical conditions.

Enjoy learning about decision-making in bash scripting with this comprehensive example!

---

```yaml
These files will help you manage decision-making examples with `if` statements, covering a wide range of bash scripting scenarios from beginner to advanced.
```

1. Basic `if` Statement
The if statement checks a condition and executes code `if` the condition is true.

- Syntax:

    ``` bash
    if [ condition ]; then
        commands
    fi
    ```
- Example:

    ```bash
    # Simple number comparison
    num=10
    if [ "$num" -eq 10 ]; then
        echo "The number is 10."
    fi
    ```

- Explanation:

- `-eq`: Numeric equality check. The script checks if the variable `num` is equal to 10.

2. Using `else`
The `else` block executes when the `if` condition is false.

- Syntax:

    ```bash
    if [ condition ]; then
        commands
    else
        alternative_commands
    fi
    ```
- Example:

    ```bash
    num=20
    if [ "$num" -eq 10 ]; then
        echo "The number is 10."
    else
        echo "The number is not 10."
    fi
    ```
3. Using `elif`
The `elif` block allows multiple conditions to be tested.

- Syntax:

    ```bash
    if [ condition1 ]; then
        commands
    elif [ condition2 ]; then
        alternative_commands
    else
        other_commands
    fi
    ```
- Example:

    ```bash
    num=30
    if [ "$num" -eq 10 ]; then
        echo "The number is 10."
    elif [ "$num" -eq 20 ]; then
        echo "The number is 20."
    else
        echo "The number is neither 10 nor 20."
    fi
    ```
4. String Comparisons
You can test string conditions in Bash using string operators.

- String Comparison Operators:

-`=`: Equal
- `!=`: Not equal
- `-z`: String is null (empty)
- `-n`: String is not null (not empty)

- Example:

    ```bash
    str="hello"
    if [ "$str" = "hello" ]; then
        echo "String matches hello."
    elif [ "$str" != "hello" ]; then
        echo "String does not match."
    fi
    ```

5. File Tests
You can check various properties of files using specific operators.

- Common File Test Operators:

- `-e`: File exists
- `-f`: File is a regular file
- `-d`: File is a directory
- `-r`: File is readable
- `-w`: File is writable
- `-x`: File is executable
- `-s`: File is not empty

- Example:

    ```bash
    file="/path/to/file"
    if [ -f "$file" ]; then
        echo "File exists and is a regular file."
    elif [ -d "$file" ]; then
        echo "It's a directory."
    else
        echo "File does not exist."
    fi
    ```

6. Arithmetic Comparisons
In Bash, arithmetic comparisons can be made using the following operators:

- Arithmetic Comparison Operators:

- `-eq`: Equal to
- `-ne`: Not equal to
- `-lt`: Less than
- `-le`: Less than or equal to
- `-gt`: Greater than
- `-ge`: Greater than or equal to

- Example:

    ```bash
    num=50
    if [ "$num" -gt 40 ]; then
        echo "Number is greater than 40."
    else
        echo "Number is less than or equal to 40."
    fi
    ```

7. Compound Conditions
You can use `&&` (AND) and `||` (OR) to combine conditions.

- AND Operator (`&&`):

    ```bash
    if [ "$num" -gt 10 ] && [ "$num" -lt 100 ]; then
        echo "Number is between 10 and 100."
    fi
    OR Operator (`||`):
    ```

    ```bash
    if [ "$num" -eq 10 ] || [ "$num" -eq 20 ]; then
        echo "Number is either 10 or 20."
    fi
    ```

8. Advanced Compound Tests
You can use parentheses `()` for grouping and the `-a` (AND) and `-o` (OR) for compound tests within a single bracket `[]`.

- Example:

    ```bash
    age=25
    country="USA"

    if [ "$age" -ge 18 ] && [ "$age" -le 30 ] && [ "$country" = "USA" ]; then
        echo "You are eligible for the program."
    else
        echo "You are not eligible."
    fi
    ```

Or using:

    ```bash
    if [ "$age" -ge 18 -a "$age" -le 30 ] && [ "$country" = "USA" ]; then
        echo "You are eligible for the program."
    fi
    ```

9. Using `case` with `if`
For more advanced logic, you can combine `if` and `case` statements.

- Example:

    ```bash
    read -p "Enter a number: " num

    case $num in
        1)
            if [ "$num" -eq 1 ]; then
                echo "Number is one."
            fi
            ;;
        2)
            if [ "$num" -eq 2 ]; then
                echo "Number is two."
            fi
            ;;
        *)
            echo "Number is neither one nor two."
            ;;
    esac
    ```

10. Nested `if` Statements
You can nest `if` statements within each other to check multiple conditions in sequence.

- Example:

    ```bash
    num=25
    if [ "$num" -gt 10 ]; then
        if [ "$num" -lt 30 ]; then
            echo "Number is between 10 and 30."
        fi
    fi
    ```

11. Testing with Regular Expressions
Bash also supports regular expressions for advanced string matching.

- Example:

    ```bash
    str="hello123"
    if [[ "$str" =~ ^[a-z]+[0-9]+$ ]]; then
        echo "String contains letters followed by numbers."
    fi
    ```

12. Using Functions with `if`
Combine `if` statements with functions to structure larger scripts.

- Example:

    ```bash
    check_even_odd() {
        if [ $(( $1 % 2 )) -eq 0 ]; then
            echo "$1 is even."
        else
            echo "$1 is odd."
        fi
    }

    check_even_odd 5
    check_even_odd 10
    ```
