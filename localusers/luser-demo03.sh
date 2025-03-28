#!/bin/bash

# Diplay the UID and username of the user executing this script
# Display if the user is the vagrant user or not

# Display the UID

echo "Your UID is ${UID}"

# Only display if the UID does NOT match 1000
# By convention if a script is successfull it returns exit status of 0
# if the script is not successfull it returns a non-zero exit status, that can be 1 or whatever number different from 0
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Your UID does not match ${UID_TO_TEST_FOR}."
	exit 1
fi


# Display the username
USER_NAME=$(id -un)

# Test if the command succeeded.
# ${?} stores the status value of the last executed command.
if [[ "${?}" -ne 0 ]]
then
	echo 'The id command did not execute succesfully.'
	exit 1
fi
echo "Your username is ${USER_NAME}"

# You can use a string test conditional
# One equal sign ( = ) means that is comparing the exact match.
# Two equals signs ( ==  ) means that is looking for a pattern.
USER_NAME_TO_TEST_FOR='vagrant'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "Your username matches ${USER_NAME_TO_TEST_FOR}."
fi


# Test for != (not equal) for the string

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "Your username does not match ${USER_NAME_TO_TEST_FOR}."
	exit 1
fi

exit 0
