while true
do
# Allocate some memory
array=(1 2 3 4 5)

# Allocate even more memory
for ((i=1;i<=10000;i++)); do
  array+=("a")
done

# Print the used and free memory
free -m
sleep 1
done
