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
    echo "Selected choice is start"

elif ["$ACTION" = "start"]; then 
     echo "Selected choice is start"

else 
    echo "Only valid option is start"

fi 