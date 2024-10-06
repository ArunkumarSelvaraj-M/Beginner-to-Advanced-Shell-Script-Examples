# Shell-Scripting-Guide
A comprehensive guide to shell scripting from beginner to advanced levels, including examples of variable types, loops, functions, and error handling. Ideal for learning and practical scripting in Unix/Linux environments.

# Redirection in Shell Scripting

## Overview

This branch contains a script (`redirection.sh`) that demonstrates the different types of redirection used in Unix/Linux shell scripting. Redirection is the process of sending the output of a command to a file or device, or using a file as input for a command.

## Script Usage

To run the script, ensure it has executable permissions. You can set executable permissions using:

```bash
chmod +x redirection.sh
```

Then, you can execute the script:

```bash
./redirection.sh
```

The script will output the results of various redirection techniques.

## Redirection Examples

### Standard Output (stdout) Redirection
-   `>` : Redirects stdout to a file, overwriting its contents.
-   `>>` : Redirects stdout to a file, appending to its contents.

### Standard Error (stderr) Redirection

-   `2>` : Redirects stderr to a file.
-   `2>>` : Redirects stderr to a file, appending to its contents.

### Redirecting Both stdout and stderr

-   `&>` : Redirects both stdout and stderr to the same file.
-   `1>` : Redirects stdout to a file.
-   `2>` : Redirects stderr to a file.

### Standard Input (stdin) Redirection

-   `<` : Redirects stdin from a file.

### Special Redirection Cases

-   `/dev/null` : Discards the output or error.

## Example Use Case

Use this script to understand how to manage and control the flow of input and output in shell scripting. This can be useful when building more complex scripts that deal with logging, error handling, and piping data between commands.


