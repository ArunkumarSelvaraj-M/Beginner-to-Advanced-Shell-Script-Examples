#!/bin/bash
# redirection_examples.sh
# This script demonstrates the use of stdin, stdout, stderr, and other redirection techniques.

# 1. Redirecting stdout (standard output) to a file
echo "1. Redirecting stdout to a file:"
echo "This message is redirected to output.txt" > output.txt
echo "Check output.txt for the content."
echo ""

# 2. Redirecting stderr (standard error) to a file
echo "2. Redirecting stderr to a file:"
ls nonexistentfile 2> error.txt
echo "Error message is redirected to error.txt."
echo ""

# 3. Redirecting both stdout and stderr to separate files
echo "3. Redirecting stdout and stderr to separate files:"
ls /nonexistentpath 1> output.txt 2> error.txt
echo "stdout is in output.txt and stderr is in error.txt."
echo ""

# 4. Redirecting both stdout and stderr to the same file
echo "4. Redirecting stdout and stderr to the same file:"
ls /nonexistentpath &> combined.txt
echo "Both stdout and stderr are in combined.txt."
echo ""

# 5. Appending stdout to a file (instead of overwriting)
echo "5. Appending stdout to a file:"
echo "Appending this line to output.txt" >> output.txt
echo "Check output.txt for the new appended content."
echo ""

# 6. Redirecting stdin (standard input) from a file
echo "6. Redirecting stdin from a file:"
echo "This is input data" > input.txt
cat < input.txt
echo ""

# 7. Using stdin, stdout, and stderr together in a pipeline
echo "7. Using stdin, stdout, and stderr together in a pipeline:"
cat nonexistentfile 2>> error.txt | tr 'a-z' 'A-Z' 1>> output.txt
echo "Stdout is appended to output.txt and stderr to error.txt."
echo ""

# 8. Discarding stdout or stderr using /dev/null
echo "8. Discarding stdout or stderr:"
echo "Only errors will be shown, stdout is discarded."
ls /nonexistentpath > /dev/null 2> error.txt
echo "Check error.txt for errors; stdout was discarded."
