#!/bin/bash


echo "Enter the shape (1 - Circle, 2 - Square, 3 - Rectangle):"
read shape


case $shape in
  1)  # Circle
    echo "Enter the radius:"
    read radius
    area=$(echo "scale=2; 3.14159 * $radius * $radius" | bc)
    echo "Area of the circle: $area"
    ;;
  2)  # Square
    echo "Enter the side length:"
    read side
    area=$(echo "$side * $side" | bc)
    echo "Area of the square: $area"
    ;;
  3)  # Rectangle
    echo "Enter the length and breadth:"
    read length breadth
    area=$(echo "$length * $breadth" | bc)
    echo "Area of the rectangle: $area"
    ;;
  *)  # Invalid input
    echo "Invalid shape selection."
    ;;
esac
