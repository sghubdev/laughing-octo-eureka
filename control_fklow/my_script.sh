#!/bin/bash

num="1"

echo "Type a number:"
read input_num

if [ "$input_num" -eq "$num" ]; then
	echo "Ok. The number is equals $num"
else
	echo "Oops!! The numer is equals $num"
fi
