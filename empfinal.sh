#!/bin/bash -x

#isfulltime=1;
#isparttime=2;
#max_hours_month=50;
#rateperhour=200;
#no_of _workingday=10;
#max_working_days=20;
#totalworkinghours=0;
#totalworkingDays=0;
#function getworking_hour()
#{
     # case $1 in 
     # $isfulltime)
     # workinghrs=8
     # ;;
     #  $isparttime)
     # workinghrs=4
     # ;;
     # *)
     # workinghrs=0;
     # esac
     # echo $workinghrs
      
#}
#function calculateDailywage()
#{
  # wage=$(($1*$rateperhour))
  # echo $wage
#}
#while [[ $totalworinghours -lt $max_hours_month && $totalworkingdays -lt $max_working_days ]]

#do 
   #  ((totalworkingdays++))
    

    #   echo total working days $totalworkingDays 
    #   workingHours="$( getworkingHrs $((RANDOM %3)) )"
    #   totalworkinghours=$(($totalworkinghours + $workingHours))
    #   empdailywage[$totalworkingDays]="$( calculateDailywage $workingHours )"   

#done 
#totalsalary="${calculateDailywage totalworkinghours }"
#echo "totalsalary" 
#echo  "empdailywage[@]" 

totalNoOfDays=20
totalHours=0
perDayWage=[]
ratePerHour=18
function calculations()
{
	isFullTime=1
	isPartTime=2
	empCheck=$((RANDOM%3))
	case $empCheck in
		$isFullTime)
			hours=8;;
		$isPartTime)
			hours=4;;
		*)
			hours=0;;
	esac
	echo $hours
}


function dailyWage()
{

	

	wage=$(($ratePerHour*$1))
	echo $wage
}


for (( day=1; $day<$totalNoOfDays; day++ ))
do
	calchrs=" $( calculations ) "
	perDayWage[((counter++))]="$( dailyWage $calchrs )"
	totalHours=$(($totalHours+$calchrs))
done


totalSalary=$(($ratePerHour*$totalHours))
echo ${perDayWage[@]}
