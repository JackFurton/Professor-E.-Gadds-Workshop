#!/usr/bin/env python3

while True:
    try:
        x = int(input("Please enter num: "))
        break
    except ValueError:
        print("Oops! No valid num. Try agayn")
