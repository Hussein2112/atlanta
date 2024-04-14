var=$1

case $var in
    red|rojo)
        echo "Your color is red."
        ;;
    green|verde)
        echo "Your color is green."
        ;;
    blue|azul)
        echo "Your color is blue."
        ;;
    *)
        echo "Your color is neither red, green, nor blue."
        ;;
esac

