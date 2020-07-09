#!/bin/bash

echo "Welcome to Employee_Wage Computation Program"

Emp_check=$(( RANDOM %3 ))
Wage_Per_Hr=20
Full_Day_Hrs=8
Part_Time_Hrs=4

case $Emp_check in
  1)
  echo "Employee Is Present..."
  Wage=$(( Wage_Per_Hr * Full_Day_Hrs ))
  echo "Total Wage is $Wage "
  ;;

  2)
  echo "Employee Is Part Time Present..."
  Wage=$(( Wage_Per_Hr * Part_Time_Hrs ))
  echo "Part Time Wage is $Wage "
  ;;

  0)
  echo "Employee Is Not Present..."
  ;;

  *)
  echo "INVALID"
  ;;
esac
