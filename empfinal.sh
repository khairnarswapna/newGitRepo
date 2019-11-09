#!/bin/bash -x
a=$((RANDOM%2));
if [ ${a} == 1 ];
then
echo "employee is present";
else
echo "employee is not present"
fi
