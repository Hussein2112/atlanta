var=("Carla" "roberto" "Mary")

for i in ${var[1]}
do
   userdel -r $i
    echo "$i is no longer a member of the team."
done 

