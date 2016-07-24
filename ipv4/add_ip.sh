#!/bin/bash

a=0
filename='ip_list.txt'
echo "Start!"

while read ip; do 

a=$((a+1))   
echo "auto eth0:$a
iface eth0:$a inet static
address $ip
netmask 255.255.252.0
" >> interface.txt
    
    
done < $filename
echo "Done!"
