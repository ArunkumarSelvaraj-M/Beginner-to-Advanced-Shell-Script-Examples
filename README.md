# Shell-Scripting-Guide
A comprehensive guide to shell scripting from beginner to advanced levels, including examples of variable types, loops, functions, and error handling. Ideal for learning and practical scripting in Unix/Linux environments.

# File Test Operators in Shell Script

## Overview

This branch contains a script (`file_handling.sh`) demonstrating various file test operators available in Unix/Linux shell scripting. These operators allow you to check different file properties such as existence, type, permissions, and more.

## Script Usage

To run the script, ensure that it has executable permissions. You can set executable permissions using:

```bash
chmod +x file_handling.sh
```

Then, you can execute the script:

```bash
./file_handling.sh
```

The script will output the results of various file tests, such as:

-   Checking if a file exists, is a regular file, or a directory.
-   Testing file permissions (read, write, execute).
-   Checking if a file is empty or non-empty.
-   Comparing file timestamps (newer or older).
-   Testing for symbolic links and special permissions (setuid, setgid).
-   Using advanced file search with the find command.

## File Test Operators

### Basic File Checks

`-e` : Check if the file exists.
`-f` : Check if it is a regular file.
`-d` : Check if it is a directory.

### File Permission Checks

`-r` : Check if the file is readable.
`-w` : Check if the file is writable.
`-x` : Check if the file is executable.

### Advanced File Tests

`-s`: Check if the file is non-empty.
`-u`: Check if the file has the setuid bit set.
`-g`: Check if the file has the setgid bit set.
`-L`: Check if the file is a symbolic link.
`-nt`: Check if the file is newer than another file.
`-ot`: Check if the file is older than another file.

## Example Use Case

Use this script as a learning tool to better understand file operations in shell scripting or as a foundation for implementing your own file checks in scripts.
