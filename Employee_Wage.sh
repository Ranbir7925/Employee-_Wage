#!/bin/bash -x

echo "Welcome to Employee_Wage Computation Program"
Is_full_time=1
Is_part_time=2
max_hrs_in_month=4
Wage_Per_Hr=20
Working_days_per_month=20

Total_emp_hrs=0;
Total_working_days=0;

function getWorkHrs() {
	case $Emp_check in
        	$Is_full_time)
			Emp_Hrs=8
                	;;

        	$Is_part_time)
                	Emp_Hrs=4
                	;;

		*)
                	Emp_Hrs=0
                	;;
	esac
	echo $Emp_Hrs
}

while [[ ($Total_emp_hrs -lt $max_hrs_in_month) && ($Total_working_days -lt $Working_days_per_month) ]]
do
	((Total_working_days++))
	Emp_check=$((RANDOM%3))
	Emp_hrs="$( getWorkHrs $Emp_check )"
	Total_emp_hrs=$(($Total_emp_hrs+$Emp_Hrs))
done
Total_Salary=$(($Total_emp_hrs*$Wage_per_hr))
