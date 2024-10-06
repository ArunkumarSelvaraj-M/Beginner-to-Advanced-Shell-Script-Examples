#!/bin/bash

# 1. Basic Array Creation
echo "1. Basic Array Creation"
my_array=("apple" "banana" "cherry")
echo "First element: ${my_array[0]}"
echo "All elements: ${my_array[@]}"
echo

# 2. Add Elements to Array
echo "2. Add Elements to Array"
my_array+=("orange")
echo "Updated Array: ${my_array[@]}"
echo

# 3. Looping Through an Array
echo "3. Looping Through an Array"
for element in "${my_array[@]}"; do
    echo "Element: $element"
done
echo

# 4. Array Length
echo "4. Array Length"
echo "Array Length: ${#my_array[@]}"
echo

# 5. Associative Arrays (Advanced)
echo "5. Associative Arrays (Advanced)"
declare -A my_assoc_array
my_assoc_array=([name]="John" [age]="25" [city]="New York")
echo "Name: ${my_assoc_array[name]}"
echo "Age: ${my_assoc_array[age]}"
echo

# 6. Multi-Dimensional Arrays
echo "6. Multi-Dimensional Arrays"
outer_array=([0]="John" [1]="25" [2]="New York")
nested_array=([0]="Person 1: ${outer_array[@]}" [1]="Other Data")
echo "Nested Array: ${nested_array[0]}"
echo

# 7. Passing Arrays to Functions
echo "7. Passing Arrays to Functions"
print_array() {
    local array=("$@")
    for element in "${array[@]}"; do
        echo "Function Element: $element"
    done
}
print_array "${my_array[@]}"
echo

# 8. Handling Special Characters in Arrays
echo "8. Handling Special Characters in Arrays"
my_complex_array=("element with space" "element_with_special*&^%" "newline
in element")
for element in "${my_complex_array[@]}"; do
    echo "Complex Element: $element"
done
echo

# 9. Array Filtering
echo "9. Array Filtering"
numbers=(1 2 3 4 5 6 7 8)
filtered_numbers=()
for num in "${numbers[@]}"; do
    if (( num % 2 == 0 )); then
        filtered_numbers+=("$num")
    fi
done
echo "Filtered Even Numbers: ${filtered_numbers[@]}"
echo

# 10. Dynamic Array Based on User Input
echo "10. Dynamic Array Based on User Input"
echo "Enter numbers separated by spaces:"
read -a dynamic_array
sum=0
for num in "${dynamic_array[@]}"; do
    sum=$((sum + num))
done
echo "Sum of numbers: $sum"
echo

# 11. Error Handling in Arrays
echo "11. Error Handling in Arrays"
invalid_index=10
if [ -z "${my_array[$invalid_index]}" ]; then
    echo "Invalid index or element doesn't exist."
else
    echo "Element: ${my_array[$invalid_index]}"
fi
echo

# 12. Array of Commands and Piping Output
echo "12. Array of Commands and Piping Output"
commands=("ls -l" "pwd" "date")
for cmd in "${commands[@]}"; do
    eval $cmd
done
echo

# 13. Handling Arrays in Parallel Execution
echo "13. Handling Arrays in Parallel Execution"
urls=("http://example1.com" "http://example2.com" "http://example3.com")
for url in "${urls[@]}"; do
    curl "$url" &
done
wait
echo "Parallel execution done."
echo

# 14. Named File Descriptors with Arrays
echo "14. Named File Descriptors with Arrays"
exec {FD1}<>output_file.txt
exec {FD2}<>input_file.txt
echo "Writing data to file" >&$FD1
cat <&$FD2
exec {FD1}>&-
exec {FD2}<&-
