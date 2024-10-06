#!/bin/bash
# string_tests.sh
# This script demonstrates various string test operators in shell scripting.

# 1. Check if a string is non-empty
str1="Hello"
echo "1. Non-empty string check:"
if [ -n "$str1" ]; then
  echo "The string is non-empty: $str1"
else
  echo "The string is empty."
fi
echo ""

# 2. Check if a string is empty
str2=""
echo "2. Empty string check:"
if [ -z "$str2" ]; then
  echo "The string is empty."
else
  echo "The string is non-empty: $str2"
fi
echo ""

# 3. String equality comparison
str3="Linux"
str4="Linux"
echo "3. String equality comparison:"
if [ "$str3" = "$str4" ]; then
  echo "$str3 is equal to $str4"
else
  echo "$str3 is not equal to $str4"
fi
echo ""

# 4. String inequality comparison
str5="Bash"
str6="Shell"
echo "4. String inequality comparison:"
if [ "$str5" != "$str6" ]; then
  echo "$str5 is not equal to $str6"
else
  echo "$str5 is equal to $str6"
fi
echo ""

# 5. String comparison for greater/less than (ASCII order)
str7="apple"
str8="banana"
echo "5. String comparison using ASCII values:"
if [[ "$str7" < "$str8" ]]; then
  echo "$str7 comes before $str8 in ASCII order."
else
  echo "$str7 does not come before $str8."
fi
if [[ "$str8" > "$str7" ]]; then
  echo "$str8 comes after $str7 in ASCII order."
else
  echo "$str8 does not come after $str7."
fi
echo ""

# 6. Check if a string contains a substring
str9="This is a sample string."
substring="sample"
echo "6. Check if string contains a substring:"
if [[ "$str9" == *"$substring"* ]]; then
  echo "The string contains the substring: $substring"
else
  echo "The string does not contain the substring."
fi
echo ""

# 7. Combine multiple string conditions
echo "7. Combining multiple string conditions:"
if [ -n "$str1" ] && [ "$str3" = "$str4" ]; then
  echo "Both conditions are true: str1 is non-empty and str3 equals str4."
else
  echo "At least one condition is false."
fi
echo ""

# 8. String pattern matching using regex
str10="123abc"
echo "8. String pattern matching using regex:"
if [[ "$str10" =~ ^[0-9]+[a-z]+$ ]]; then
  echo "$str10 matches the pattern: numbers followed by letters."
else
  echo "$str10 does not match the pattern."
fi
echo ""

# 9. Case-sensitive comparison
str11="CaseSensitive"
str12="casesensitive"
echo "9. Case-sensitive string comparison:"
if [ "$str11" = "$str12" ]; then
  echo "$str11 is equal to $str12"
else
  echo "$str11 is not equal to $str12 (case-sensitive)"
fi
