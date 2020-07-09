#!/bin/bash

echo "Welcome to Employee_Wage Computation Program"

Emp_check=$(( RANDOM %2 ))
WagePerHr=20
if [ $Emp_check -eq 1 ]
then
  echo "Employee Is Present..."
  FullDayHrs=8
  Wage=$(( WagePerHr * FullDayHrs ))
  echo "Total Wage is $Wage "
else
  echo "Employee Is Not Present..."
fi
