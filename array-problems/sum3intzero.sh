#!/bin/bash

arr=( 4 -1 2 -3 1 -6 )
n=6

for ((i=0; i<$n-2; i++))
do
   for ((j=$i+1; j<$n-1; j++))
   do
      for ((k=$j+1; k<$n; k++))
      do
         a=$(($((${arr[i]}+${arr[j]}))+${arr[k]}))
         if [ $a -eq 0 ]
         then
            echo "elements sum to zero = " ${arr[i]},${arr[j]},${arr[k]}
            echo "Sum of three Integer = $a"
         fi
      done
   done
done
