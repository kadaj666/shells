#!/bin/bash
ip1=( $(echo "$1" | sed 's/\./ /g') )
ip2=( $(echo "$2" | sed 's/\./ /g') )


for i in $(seq ${ip1[0]} ${ip2[0]})
 do
  for j in $(seq ${ip1[1]} ${ip2[1]})
   do
    for k in $(seq ${ip1[2]} ${ip2[2]})
     do
      for l in $(seq ${ip1[3]} ${ip2[3]})
       do
       printf "%d.%d.%d.%d\n" $i $j $k $l >> ip_list.txt
       done
     done
   done
done
