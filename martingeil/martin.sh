# Bash script to generate martingeil system
# Created by kadaj666 (RPG-Team.ru)

#!/bin/bash

echo "How many trys"
read MAXCOUNT
echo "How many money"
read money
echo "Stavka min"
read stavka

#MAXCOUNT=90
#money=3000
#stavka=20

minstavka=$stavka
count=1

status=unknow
while [ "$count" -le "$MAXCOUNT" ] 
	do
let "count += 1"


a=$(($RANDOM%2))

if [ "$a" == "0" ]; then
money=$((money-stavka))
stavka=$((stavka*2))
status=Loose
else [ "$a" == "1" ];
money=$((money+stavka))
stavka=$minstavka
status=Win
fi
if [ "$money" -le "0" ]; then
echo "BANKROT"
echo "Playng" $count "times"
exit
fi
echo $status ":" $money "(Stavka="$stavka")"
#echo $money >> money.txt
done