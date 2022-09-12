# validating whether the executing user is root or not
ID=$(id -u)
if [ $ID -ne 0 ]; then 
    echo -e "\e[31m Try executing the script with sudo or a root user \e[0m"
    exit 1
fi 

# Declaring the stat function
stat() {
    if [ $1 -eq 0 ] ; then 
        echo -e "\e[32m Success \e[0m" 
    else
        echo -e "\e[31m Failure. Look for the logs \e[0m"  
    fi 
}

FUSER=roboshop 
LOGFILE=/tmp/robot.log 

USER_SETUP() {
    echo -n "Adding $FUSER user:"
    id ${FUSER} &>> LOGFILE  || useradd ${FUSER}   # Creates users only in case if the user account doen's exist
    stat $? 
}


NODEJS() {
    echo -n "Configure Yum Remos for nodejs:"
    curl -sL https://rpm.nodesource.com/setup_lts.x | bash >> /tmp/${COMPONENT}.log 
    stat $?

    echo -n "Installing nodejs:"
    yum install nodejs -y >> /tmp/${COMPONENT}.log 
    stat $? 

    
}