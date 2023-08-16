#!/usr/bin/env python3

# Armstrong number is a number that is equal to the sum of cubes of its digits.
# For example 0, 1, 153, 370, 371 and 407 are the Armstrong numbers.

# Python program to check if the number is an Armstrong number or not

# take input from the user
num = int(input("Enter a number: "))
sum = 0
temp = num

while temp > 0:
    digit = temp % 10
    sum += digit ** 3
    temp //= 10

# display the result
if num == sum:
    print(num, "is an Armstrong number")
else:
    print(num, "is not an Armstrong number")

# Output:
# Enter a number: 407
# 407 is an Armstrong number


