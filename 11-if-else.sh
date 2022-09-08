#!/bin/bash 

#  [ -z "$var" ]
# [ -n "$var" ]

ACTION=$1 

if [ "$ACTION = start ] ; then 
    echo "Selected choice is start"

else 
    echo "Only valid option is start"

fi 