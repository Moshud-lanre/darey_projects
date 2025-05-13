#!/bin/bash

# Prompts user to input a number for the multiplication table.
read -p "Enter a number for the multiplication table: " num

# Asks user the type of Multiplication table desired 
read -p "Do you want a full  or  partial table ? (Enter 'f' for full, 'p' for partial): " table

# Checks if the user prefer partial table and execute if true 
if [ $table == 'p' ]; then
    # Prompts the user to input the starting and ending range for the partial table to be generated
    read -p "Enter the starting number (between 1 and 10): " range1
    read -p "Enter the ending number (between 1 and 10): " range2

    # Validates the range inputs handle invalid range 
    if [ $range1 -gt $range2 ]; then
        echo "Invalid range. Showing Full table instead."

        echo "The full multiplication table for $num is : "

        for i in {1..10}
        do
             ans=$((num * i))
            echo "$num * $i = $ans"
        done
    # Validates the range input to handle out-of-bound range
    elif [ $range1 -gt 10 ] || [ $range2 -gt 10 ]; then
        echo "Range out of bound. Showing full table instead."

        echo "The full multiplication table for $num is : "

        for i in {1..10}
        do
             ans=$((num * i))
            echo "$num * $i = $ans"
        done

    else 
        # Prints out the partial table as desired by the user.
        echo "The partial multiplication table for $num with range from $range1 to $range2 :"
        for i in $(seq $range1 $range2)
        do  
            ans=$((num * i))
            echo " $num * $i = $ans"
        done
    fi

else
    # Prints the full multiplication table as desired by the User.
    echo "The full multiplication table for $num is :"
    for i in {1..10}
    do
        ans=$((num * i)) 
        echo " $num * $i = $ans"
    done

fi

echo "=========================================================="
echo "Executing C style For Loop "

# Checks if the user prefer partial table and execute if true
if [ $table == 'p' ]; then
    
    # Validates the range inputs handle invalid range
    if [ $range1 -gt $range2 ]; then
        echo "Invalid range. Showing Full table instead."

        echo "The full multiplication table for $num is : "

        for ((i=1; i<=10; i++)); do
            ans=$((num * i))
            echo "$num * $i = $ans"
        done
    # Validates the range input to handle out-of-bound range
    elif [ $range1 -gt 10 ] || [ $range2 -gt 10 ]; then
        echo "Range out of bound. Showing full table instead."

        echo "The full multiplication table for $num is : "

        for ((i=1; i<=10; i++)); do
            ans=$((num * i))
            echo "$num * $i = $ans"
        done
    else 
        # Prints out the partial table as desired by the user.
        echo "The partial multiplication table for $num with range from $range1 to $range2 :"
        for ((i=$range1; i<=$range2; i++));
        do  
            ans=$((num * i))
            echo " $num * $i = $ans"
        done
    fi

else
    # Prints the full multiplication table as desired by the User.
    echo "The full multiplication table for $num is :"
    for ((i=1; i<=10; i++)); do
            ans=$((num * i))
            echo "$num * $i = $ans"
        done

fi    




