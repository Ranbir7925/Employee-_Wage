#!/bin/bash

echo "Welcome to Employee_Wage Computation Program"

Emp_check=$(( RANDOM %2 ))

if [ $Emp_check -eq 1 ]
then
  echo "Employee Is Present..."
else
  echo "Employee Is Not Present..."
fi
