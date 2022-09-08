#!/bin/bash 

#  [ -z "$var" ]
# [ -n "$var" ]

ACTION=$1 

# Demo On If Else 
# if [ "$ACTION" = "start" ] ; then 
#     echo "Selected choice is start"

# else 
#     echo "Only valid option is start"
# fi 


# Demo on Else If 

if [ "$ACTION" = "start" ] ; then 
    echo "Starting XYZ Service"

    elif [ "$ACTION" = "stop" ] ; then 
        echo "Stopping XYZ Service" 
        exit 1 

    elif [ "$ACTION" = "restart" ] ; then 
        echo "Restarting XYZ Service" 
        exit 2
    else 
        echo -e "Valid options are \e[31m start or stop or restart only \e[0m"
fi 