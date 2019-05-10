#!/bin/bash
echo "Enter File name:"
read fname
echo "$fname"
if [ -f $fname ]
then 
	echo "Soft Links Are,.,,,,,,,,,,,,,,,,"
	ls -l | grep "^l.*.$fname" | cut -d "" -f12
else
	echo "File does not exist....."
fi

