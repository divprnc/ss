if [ $# -gt 0 ]
then 
	echo "Backup files............"
	tar -czvf newback.tar $1
else
	echo "Please enter the arguments"
fi

