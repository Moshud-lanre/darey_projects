#!/bin/bash

# This script calculates the area of a rectangle.

# Function to calculate the area
calculate_area() {
  # Get the length and width from the arguments
  length=$1
  width=$2

  # Check if the inputs are valid numbers
  if ! [[ "$length" =~ ^[0-9]+$ ]] || ! [[ "$width" =~ ^[0-9]+$ ]]; then
    echo "Error: Invalid input. Length and width must be numbers."
    return 1
  fi
  
  # Calculate the area
  area=$((length * width))
  
  # Print the result
  echo "The area of the rectangle is: $area"
}

# Main part of the script
# Get the length and width from the user
read -p "Enter the length of the rectangle: " length
read -p "Enter the width of the rectangle: " width

# Call the calculate_area function with the provided length and width
calculate_area $length $width

# Exit the script
exit 0