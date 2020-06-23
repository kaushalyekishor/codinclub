#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHours=20
totalSalary=0
empCheck=$((RANDOM%3))
numberOfDays=20
for (( day=1;day<=$numberOfDays;day++ ))
do
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
salary=$(($empHours * $empRatePerHours))
totalSalary=$(($totalSalary + $salary))
done
echo $totalSalary
