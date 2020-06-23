#!/bin/bash -x

counter=0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Banana"
Fruits[((counter++))]="Orange"
Fruits[((counter++))]="Chikku"

echo ${Fruits[1]}
echo ${Fruits[@]}
echo ${Fruits[@]:1:2}
echo ${!Fruits[@]}
echo ${#Fruits[@]}
