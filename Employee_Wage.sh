#!/bin/bash -x
is_part_time=1
is_full_time=2
max_hrs_in_month=4
emp_rate_per_hr=20
num_working_day=20

total_emphr=0
total_working_days=0

declare -A dailyWages

function getworkhr() {
        local $empcheck=$1
        case $empcheck in
                $is_full_time)
                        emphrs=8 ;;
                $is_part_time)
                        emphrs=4 ;;
                *)
                        emphrs=0 ;;
        esac
        echo $emphrs
}

function getEmpWage() {
        local emphrs=$1
        echo $(($emphrs*$emp_rate_per_hr))
}

while [[ $total_emphr -lt $max_hrs_in_month && $total_working_days -lt $num_working_day ]]
do
        ((total_working_days++))
        empcheck=$((RANDOM%3))
        emphrs="$( getworkhr $empcheck )"
        total_emphr=$(($total_emphr+$emphrs))
        dailyWages["Day "$total_working_days]="$( getEmpWage $emphrs)"
done

totalSalary=$(($total_emphr*$emp_rate_per_hr))
echo ${dailyWages[@]}
echo ${!dailyWages[@]}
