#!/bin/bash
#script to save a lot of time
#it takes 4 commands to go back to monitor mode and verify it
#this script fixes that

ifconfig wlan0 down
iwconfig wlan0 mode monitor
ifconfig wlan0 up
iwconfig wlan0 | grep Mode
