#!/bin/bash -x
#constants for the program
isPartTime=1
isFullTime=2
empRatePerHours=20
maxHoursInMonth=10
numberWorkingDays=20

#variables
totalEmpHours=0
totalWorkingDays=0

while [[ $totalEmpHours -lt $maxHoursInMonth &&
	 $totalWorkingDays -lt $numberWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
case $empCheck in
	$isFullTime)
		empHours=8
		;;
	$isPartTime)
		empHours=6
		;;
	*)
		empHours=0
		;;
esac
totalEmpHours=$(($totalEmpHours + $empHours))
done
totalSalary=$(($totalEmpHours + $empRatePerHours))
