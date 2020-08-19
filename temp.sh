#!/bin/bash


while [ true ]
do
	sensors
	sleep .2
	read -t 1 -n 1 key
	if [[ $key = q ]]
	then
		break
	fi
done
