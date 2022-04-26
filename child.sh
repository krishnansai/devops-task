#!/bin/bash

echo "enter a number"
read num
sum=0
for (( n=2; n<=$num; n++ ))
do

t=1

if [ $n -lt 2 ]
then echo "Please give other  numbers than 0 and 1"
else
#echo $n
for (( i=2; i<$n; i++ ))
do
        #echo $n
        if (($n%i==0))
        then
        #echo "$n"
        t=0
        break;
        fi
done
#echo $t
        if [ $t == 1 ]
        then
        echo "$n"
        sum=`expr $sum + $n`
        fi
fi
done
echo "sum of prime number is $sum "

