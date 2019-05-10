echo "Enter String to be searched:"
read str
echo "Enter file name: "
read fname
if [ -f $fname ]
then 
	echo "The line containing $str string  in $fname folder"
	grep $str $fname
else
	echo"File does not exists"
fi

