#!/bin/bash -x
head=1
tail=0
i=1
hCount=0
tCount=0
while [ $i -le 10 ]
	do
		result=$(($RANDOM%2))
			if [ $result -eq $head ]
				then
					((hCount++))
				else
					((tCount++))
			fi
		((i++))
done
echo $hCount "Number of Times Head Win"
echo $tCount "Number of Times Tail Win"

