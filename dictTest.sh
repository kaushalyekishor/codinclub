#!/bin/bash -x
#Note using latest Bash Varsion 5.0
declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo ${sounds[@]}
echo "Dog sound "${sounds[dog]}
echo ${!sounds[@]}
echo ${#sounds[@]}
