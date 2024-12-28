#!/bin/bash
clear
# TOOL TO CHECK YOUR PORT IN WI-FI CONNECTION - @SoloShown
echo "Check every port in your Wi-Fi connection"

# Menu to choose the action user do
while
echo "Please choose an option: "
echo "1. Start Tool"
echo "2. Show Results"
echo "3. Exit"
echo "Choose: "
read choose

# Menu option with case
case $choose in 
	1) 
	   gateway=$(ip route | grep default | awk '{print $3}')
	   echo "Scanning gateway IP: $gateway"
	   nmap $gateway > results.txt
	   echo "Done!" 
	   ;;
	2) 
	   echo "[-][-][-] RESULTS [-][-][-]"
	   more results.txt 
	   ;;
	3) 
	   exit 
	   ;;
	*) 
	   echo "Invalid operation" 
	   ;;
esac
do [ $choose != 3 ]; done
