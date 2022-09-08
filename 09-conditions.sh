#!/bin/bash 


# case $var  in 
#     cond1)
#         command1 ;; 
#     cond2)
#         command2 ;;
#     *)
#         exz ;;;
# esac  

ACTION=$1

case $ACTION in 
    start)
        echo "Starting XYZ Service" 
        ;; 
    stop)
        echo "Stopping XYZ Service"
        ;;
    restart)
        echo "Restarting XYZ Service"
        ;;
    *)
        echo "Valid options are start or stop or restart only"
esac 
