#read -p "Enter the first Number" x
#read -p "Enter the second Number" y

#if [ $x -gt $y ]
#then
#   echo "$x is greater then $y"
#fi



if [ $1 -eq $2 ]
then
   echo "$1 and $2 are equal"
   exit
fi


if [ $1 -gt $2 ]
then
   echo "$1 is greater then $2"
   exit
fi

if [ $1 -lt $2 ]
then
   echo "$1 is less than $2"
   exit
fi
