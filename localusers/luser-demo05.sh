#!/bin/bash

# This script generates a list of random passwords.

# Clears previous terminal inputs.
clear

# A random number as a password
PASSWORD="${RANDOM}"
echo "${PASSWORD} - Generated using constant RANDOM from bash"

# Three random numbers together
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

# Use the current date/time as the basis for the password.
PASSWORD="$(date +%s)"  # man date
echo "${PASSWORD} - Generated with Unix/Epoch/Posix time."

# Use nanoseconds to act as randomization
PASSWORD="$(date +%s%N)"  # man date
echo "${PASSWORD} - Generated with Unix time and nanoseconds"

# A better random password.
PASSWORD="$(date +%s%N | sha256sum | head -c 32)"
echo "${PASSWORD} - Generated with Unix time, nanoseconds, sha256sum."

# An even better password.
PASSWORD="$(date +%s%N${RANDOM} | sha256sum | head -c 48)"
echo "${PASSWORD}"

# Append a special character to the password.
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_+' | fold -w 1 | shuf | head -c 1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"

# Get the ending of the password.
END=$(echo "${PASSWORD}${SPECIAL_CHARACTER}" | tail -c 8)
echo "${END}"
