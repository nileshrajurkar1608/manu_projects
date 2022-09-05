#!/bin/bash 

#  Here are the special variables 

#  $0          : This will gives the name of the script you're running 
#  $1 to $9    :You can pass a maximum of 9 variables from the command line when you're running the script 
#  $* 
#  $@ 
#  $# 
#  $$ 
echo-e "script name that you're running is $0"

a=10 
b=$1
c=$2 
d=$3 
echo value of a is : $a 
echo value of b is : $b 
echo value of c is : $c 
echo value of d is : $d 
# sh scriptname.sh 100 200 300 
# sh scriptname.sh  $1  $2  $3