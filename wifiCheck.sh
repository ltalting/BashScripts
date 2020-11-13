#!/bin/bash

X="0"

while [ $X -lt 1 ]
do
if ping -c 1 -w 2 -q 8.8.4.4
then
	sleep 30s
else
	TIME=$(date +"%D %r")
	echo $TIME ": internet is down" >> /home/lalting/Desktop/internetDownLog.txt
	sleep 10s
fi
done
