#!/bin/bash -x
ispresent=$((RANDOM%2));
if [ ${ispresent} == 1 ];
then
echo "employee is present";
else
echo "employee is not present !!!"
fi
