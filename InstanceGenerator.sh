i=1
read -p "Are you sure you want to create $1 instances of $2? [Y/n]" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    while [ $i -le $1 ]; do
        echo "Working on instance $i"
        sleep 0.05
        if ! type screen >/dev/null; then
            echo "Screen is not installed. Please install screen and try again."
            exit 1
        fi
        if ! test -z $4; then
            screen -dmS $3$i bash -c "$4 $2 $(($i - 1))"
        else
            screen -dmS $3$i bash -c "python3.8 $2 $(($i - 1))"
        fi
        i=$(($i + 1))
    done
fi


#example invoke:
# bash InstanceGenerator.sh 2 main.py thing python3.8
# last argument is optional, if not specified, the script will run as python3.8


#description:
# InstanceGenerator.sh is a script that will create a number of instances of a python3.8, passing in a number, into each instance, with the number starting from 1, and increasing by 1 each time.
# the screens are also deleted when the script is done.


# Version: 1.0.1