#!/bin/bash
echo "Enter how many ip to add"
read MAXCOUNT
count=1
first=0000
last=FFFF
last=$(printf '%d' 0x$last)
first=$(printf '%d' 0x$first)


#subnets from the end

a=$first # one 
b=$first # two 
c=$first # theree 
d=$first # four

gen_d ()
	{
		
		let "d += 1"

gen_c ()
	{
		
		let "c += 1"

gen_b ()
	{
		
		let "b += 1"
		
gen_a ()
	{
	while [ "$count" -le "$MAXCOUNT" ] 
		do

		let "count += 1"
		let "a += 1"
		
		printf "%X:%X:%X:%X\n" $d $c $b $a;
		
		if [ "$a" == "$last" ]; then
		a=$first
		gen_b
		fi
		
		if [ "$b" == "$last" ]; then
		b=$first
		gen_c
		fi
		
		if [ "$c" == "$last" ]; then
		c=$first
		gen_d
		fi
		
		if [ "$d" == "$last" ]; then
		exit
		fi
		
		done

	}
gen_a >> addip.txt
	}
gen_b 
	}
gen_c 
	}
gen_d 
 