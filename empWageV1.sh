#!/bin/bash -x
isPresent=1
randomCheck=$((RANDOM%2))
empWage=0
ratePerHours=4
empHours=8

if [ $isPresent -eq $randomCheck ]
then
	empHours=8
else
	empHours=0
fi
	empWage=$(( $empHours * $ratePerHours ))
	 echo $empWage
