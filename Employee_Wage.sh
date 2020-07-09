#!/bin/bash

echo "Welcome to Employee_Wage Computation Program"

Emp_check=$(( RANDOM %3 ))
Wage_Per_Hr=20
Full_Day_Hrs=8
Part_Time_Hrs=4
if [ $Emp_check -eq 1 ]
then
  echo "Employee Is Present..."

  Wage=$(( Wage_Per_Hr * Full_Day_Hrs ))
  echo "Total Wage is $Wage "

elif [ $Emp_check -eq 2 ]
then
  echo "Employee Is Part Time Present..."
  Wage=$(( Wage_Per_Hr * Part_Time_Hrs ))
  echo "Part Time Wage is $Wage "

else
  echo "Employee Is Not Present..."
fi
