#!/bin/bash

# line 1 is called shebang. # = sharp  ! = bang

# This script displays various information to the screen

# Display 'Hello'
echo 'Hello'

#assign a value to a variable
WORD='script'
# By convention the variables are declared as UPPERCASE
# but they work as lowercase.

# Display that value using the variable
echo "$WORD"


# single quotes avoids the expasion of variables
# it shows exactly what you specify.
# variables that will be interpreted is in double quotes.


# Demonstrate that single quotes cause variables to NOT get expanded

echo '$WORD'

# combine the variable with hard-coded text.

echo "This is a shell $WORD"

# Display the contents of the variable using an alternative syntax
echo "This is a shell ${WORD}"

# Append text to the variable
echo "${WORD}ing is fun"

# Show how to NOT append text to a variable
echo "$WORDing is fun"

# Create a new variable
ENDING='ed'

# Combine the two variables
echo "This is ${WORD}${ENDING}"

# Change the value stored in the ENDING variable. (Reassignment.)
ENDING='ing'

echo "${WORD}${ENDING} is fun"

# Reassign value to ENDING
ENDING='s'

echo "You are going to write many ${WORD}${ENDING} in this class!"
