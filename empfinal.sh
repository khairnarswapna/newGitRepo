#!/bin/bash -x#!/bin/bash -x
isfulltime=1;
isparttime=2;
rateperhour=200;
no_of _workingday=10;
totalworking_hours=0;
totalworkingDays=0;
function getworking_hour()
{
      case $1 in $isfulltime)
      workinghrs=8
      ;;
       $isparttime)
      workinghrs=4
      ;;
      *)
      workinghrs=0;
      esac
      echo $workinghrs
      
}

