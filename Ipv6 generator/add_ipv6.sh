#!/bin/bash

os="$(lsb_release -is)"

echo "================================="
echo "Please answer to the next questions"
echo "================================="
echo "Please specify your network range"
select yn in "IPv6/64" "IPv6/48"; do
    case $yn in
	
        IPv6/64 ) echo "Selecting IPv6/64"; 
        echo "=================================";range=64 ;break;;
		
        IPv6/48 ) echo "Selecting IPv6/48"; 
        echo "=================================";range=48 ;break;;
    esac
done

echo $range

if [ "$range" == "64" ]; then
	echo "Enter your IPv6/64 network prefix (ex: 2a07:14c0:0:2451 )";
	read network;
	echo "================================="
else 
 if [ "$range" == "48" ]; then
	echo "Enter your IPv6/48 network prefix (ex: 2a07:14c0:2451 )";
	read network;
	echo "================================="
fi
fi	

	echo "Enter how many ip to add"
	read MAXCOUNT
    
echo "================================="	
echo "Please specify your location"
select yn in "Netherlands" "Russia" "California"; do
    case $yn in
        Netherlands) country=Netherlands; 
         gateway=FE80::224:14FF:FE4A:A580;  break;; 
   
        Russia) country=Russia; 
         gateway=FE80::218:74FF:FE17:9700;  break;; 
         
        California) country=California; 
         gateway=FE80::21D:71FF:FE72:8100;  break;; 
    esac
done






echo "================================="
echo "================================="
echo "Your OS:" $os;
echo "IPv6 range:" $range;
echo "Network prefix:" $network;
echo "Ip to add:" $MAXCOUNT;
echo "Your server location is" $country;
echo "Default route is" $gateway;




