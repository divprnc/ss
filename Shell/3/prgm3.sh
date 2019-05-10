if [ $# -lt 3 ]
then 
	echo "Enter 3 columns of your choice : "
elif [ $1 -le 9 -a $2 -le 9 -a $3 -le 9 ]
then
	echo "The contents of $1, $2, $3 are ..........."
	ls -l | cut -d " " -f $1,$2,$3
else
	echo "Please enter the arguments between 1 to 9"
fi

