#!/bin/bash
# file_tests.sh
# This script demonstrates various file test operators in shell scripting.

# 1. Check if a file exists (-e)
file="myfile.txt"
echo "1. File existence check (-e):"
if [ -e "$file" ]; then
  echo "$file exists."
else
  echo "$file does not exist."
fi
echo ""

# 2. Check if it's a regular file (-f)
echo "2. Regular file check (-f):"
if [ -f "$file" ]; then
  echo "$file is a regular file."
else
  echo "$file is not a regular file."
fi
echo ""

# 3. Check if a directory exists (-d)
dir="mydirectory"
echo "3. Directory existence check (-d):"
if [ -d "$dir" ]; then
  echo "$dir is a directory."
else
  echo "$dir is not a directory."
fi
echo ""

# 4. Check file permissions (-r, -w, -x)
echo "4. File permission checks (-r, -w, -x):"
if [ -r "$file" ]; then
  echo "$file is readable."
else
  echo "$file is not readable."
fi

if [ -w "$file" ]; then
  echo "$file is writable."
else
  echo "$file is not writable."
fi

if [ -x "$file" ]; then
  echo "$file is executable."
else
  echo "$file is not executable."
fi
echo ""

# 5. Check if the file is empty (-s)
echo "5. File non-empty check (-s):"
if [ -s "$file" ]; then
  echo "$file is not empty."
else
  echo "$file is empty."
fi
echo ""

# 6. Check for setuid and setgid (-u, -g)
binaryfile="binaryfile"
echo "6. Setuid and Setgid checks (-u, -g):"
if [ -u "$binaryfile" ]; then
  echo "$binaryfile has the setuid bit set."
else
  echo "$binaryfile does not have the setuid bit set."
fi

if [ -g "$binaryfile" ]; then
  echo "$binaryfile has the setgid bit set."
else
  echo "$binaryfile does not have the setgid bit set."
fi
echo ""

# 7. File newer or older checks (-nt, -ot)
file1="file1.txt"
file2="file2.txt"
echo "7. File comparison checks (-nt, -ot):"
if [ "$file1" -nt "$file2" ]; then
  echo "$file1 is newer than $file2."
else
  echo "$file1 is not newer than $file2."
fi

if [ "$file1" -ot "$file2" ]; then
  echo "$file1 is older than $file2."
else
  echo "$file1 is not older than $file2."
fi
echo ""

# 8. Combining multiple tests
echo "8. Combining multiple tests:"
if [ -e "$file" ] && [ -r "$file" ] && [ -s "$file" ]; then
  echo "$file exists, is readable, and is not empty."
else
  echo "$file either doesn't exist, isn't readable, or is empty."
fi
echo ""

# 9. Check for symbolic link (-L)
link="mylink"
echo "9. Symbolic link check (-L):"
if [ -L "$link" ]; then
  echo "$link is a symbolic link."
else
  echo "$link is not a symbolic link."
fi
echo ""

# 10. Advanced find command examples
echo "10. Using find command:"
echo "Find writable files in /path/to/directory:"
find /path/to/directory -type f -writable -exec echo {} is writable \;

echo "Find files modified in the last 7 days in /path/to/directory:"
find /path/to/directory -type f -mtime -7 -exec echo {} was modified in the last 7 days \;
