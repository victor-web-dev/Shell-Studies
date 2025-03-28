#!/bin/bash

# Script made to create new local users.

# Enforces that it will be executed with root privileges.

USERID="${UID}"

if [[ "${USERID}" -ne 0 ]]
then
	echo 'No permission, only the root can run.'
	exit 1
fi

# Prompts to enter name of the person who will use the account.
read -p 'Inform the name of the person who will use the account: ' NAME

# Prompts to enter the username.
read -p 'Inform the username: ' USERNAME

# Prompts to enter the initial password.
read -p 'Inform the password: ' PASSWD

# Creates a new user on the local system.
useradd -c "${NAME}" -m ${USERNAME}

if [[ "${?}" != 0 ]]
then
	echo 'The user could not be created.'
	exit 1
fi

# Set password for the new user
echo "${PASSWD}" | passwd --stdin ${USERNAME}
passwd -e ${USERNAME}

# Inform if the account was not able to be created.

if [[ "${?}" != 0 ]]
then
	echo 'The password could not be created.'
	exit 1
fi

# Display username, password and host where the account was created.

echo -e "username: \n${USERNAME} \n\n password: \n${PASSWD} \n\n hostname:\n$(hostname)"
exit 0



