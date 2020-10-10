#!/bin/bash -x
head=1
tail=0
hCount=0
tCount=0
while [[ $hCount -lt 21 && $tCount -lt 21 ]]
	do
		result=$(($RANDOM%2))
			if [ $result -eq $head ]
				then
					((hCount++))
				else
					((tCount++))
			fi
done
if [ $hCount -eq $tCount ]
	then
			echo "Tie"
	elif [ $hCount -gt $tCount ]
		then
			echo "Head Wins "$hCount
		else
			echo "Tail Wins "$tCount
fi
