if [ -f $1 ] && [ -x $1 ]
then
   echo "$1 is a file and it is executable as well"
else
   echo "I don't know what $1 is"
fi

