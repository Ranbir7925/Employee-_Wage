#!/bin/bash

echo "Welcome to Employee_Wage Computation Program"

Wage_Per_Hr=20
Working_days_per_month=20

Emp_check=$(( RANDOM %3 ))

case $Emp_check in
  1)
  echo "Employee Is Present..."
  Emp_Hrs=8
  ;;

  2)
  echo "Employee Is Part Time Present..."
  Emp_Hrs=4
  ;;

  0)
  echo "Employee Is Not Present..."
  Emp_Hrs=0
  ;;

  *)
  echo "INVALID"
  ;;
esac

Daily_Wage=$(( Wage_Per_Hr * Emp_Hrs ))
Total_Wage=$(( Daily_Wage * Working_days_per_month ))

echo "Daily Wage is=$Daily_Wage"
echo "Monthly Wage is=$Total_Wage"
