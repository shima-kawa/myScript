#!/bin/bash

###############################################################################
#  make directory in current directory.
#  each directory are named by "seq -w" command.
#  example: ex01, ex02, ex03 .....
###############################################################################

if [ $# -eq 2 ]; then
    INST="seq -w $1 $2"
elif [ $# -eq 1 ]; then
    INST="seq -w $1"
else
    echo "Invalid arguments"
    exit 1
fi

for num in $($INST)
do
    mkdir "ex$num"
done
