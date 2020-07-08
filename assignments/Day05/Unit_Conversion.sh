#!/bin/bash 
echo conversion of 42 inch into feet
feet=`units -1 '42 inch' feet | awk '{print $2}'`
echo "$feet ft"
echo -e "\n"
echo Convert Rectangular plot of 60 feet X 40 feet into meters
length=`units -1 '60 feet' meters | awk '{print $2}'`
breadth=`units -1 '40 feet' meters | awk '{print $2}'`
echo -e "\nRectangular plot: $length meters X $breadth meters\n"
area=`echo $length*$breadth | bc -l`
echo "Area= $area sq.m"
echo -e "\nArea of 25 such plot:"
plots=`echo $area*25 | bc -l`
echo "$plots sq.m"
echo -e "\n"
acre=`units -1 "$plots m^2" acre | awk '{print $2}'`
echo "Acre= $acre ac"
