#!/bin/bash
#
# Armstrong number
# Armstrong number is a number that is equal to the sum of cubes of its digits.
# For example 0, 1, 153, 370, 371 and 407 are the Armstrong numbers.

echo "Enter a number"
read num
n=$num
sum=0
while [ $n -gt 0 ]
do
    r=`expr $n % 10`
    sum=`expr $sum + $r \* $r \* $r`
    n=`expr $n / 10`
done
if [ $sum -eq $num ]
then
    echo "$num is an Armstrong number"
else
    echo "$num is not an Armstrong number"
fi

# Output:
# Enter a number
# 153
# 153 is an Armstrong number
#
