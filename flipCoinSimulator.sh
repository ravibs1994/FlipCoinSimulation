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
echo "HCount "$hCount
echo "TCount "$tCount
if [ $hCount -eq $tCount ]
	then
		echo "ITS TAI"
		echo "Def" $(($hCount-$tCount))
		while [ $(($hCount-$tCount )) -ne 2 ] && [ $(($tCount-$hCount )) -ne 2 ] 
			do
			rand=$((RANDOM%2))
        		case $rand in
                0)
                ((hCount++));;
                1)
                ((tCount++));;
                *);;
        esac
	done
	 echo "Head Wins "$hCount
 	echo "Tail Wins "$tCount
	elif [ $hCount -gt $tCount ]
		then
			echo "Head Wins "$hCount
		else
			echo "Tail Wins "$tCount
fi
