#!/bin/bash
echo "Enter value :"
read n
echo "Prime number till $n is"
for ((i=2 ; i<=n ; i++))
do
count=1
for ((j=2 ; j<=i ; j++))
do
if [ $(($i%$j)) -eq 0 ]
then
count=$(($count+1))
fi
done
if [ $count -eq 2 ]
then
echo $i
fi
done
