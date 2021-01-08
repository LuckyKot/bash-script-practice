#!/bin/bash
#script to save a lot of time
#it takes 4 commands to switch to managed mode and verify it
#this script fixes that

ifconfig wlan0 down
iwconfig wlan0 mode managed
ifconfig wlan0 up
iwconfig wlan0 | grep Mode

NetworkManager
