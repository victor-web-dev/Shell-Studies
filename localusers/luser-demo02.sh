#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the root user or not.

# Display the UID
# UID is a variable built-in the system.

echo "Your UID is ${UID}"

# Display the username.
# To get the output of a command and save it to the variable
# uses $(), also the older command for that is using ticks `` 
USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}"

# Display if the user is the root user or not
# Root has always the UID of 0

# the Double brackets [[ is the new way of using it, but also it's specific for bash
# it might not work for others like zsh, csh...

# This root verification is also called sanity checking.
# It's important to check if the user is root for specific actions.
if [[ "${UID}" -eq 0 ]]
then
	echo 'You are root'
else
	echo 'You are not root'
fi


