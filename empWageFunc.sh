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

function getWorkingHours(){

	#local $empCheck=$1 
	case $empCheck in 
	$isFullTime)
		empHours=8
		;;
	$isPartTime)
		empHours=4
		;;
	*)
		empHours=0
		;;
	esac
	echo $empHours
}
while [[ $totalEmpHours -lt $maxHoursInMonth &&
	 $totalWorkingDays -lt $numberWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
empHours="$(getWorkingHours $empCheck)"
totalEmpHours=$(($totalEmpHours + $empHours))
done
totalSalary=$(($totalEmpHours * $empRatePerHours))
