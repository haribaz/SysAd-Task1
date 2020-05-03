#!/bin/bash


if [ ! -f /home/ArmyGeneral/attendance_record ]
then
  touch /home/ArmyGeneral/attendance_record
fi

if [ ! -f /home/NavyMarshal/attendance_record ]
then
   touch /home/NavyMarshal/attendance_record
fi

if [ ! -f /home/AirForceChief/attendance_record ]
then
   touch /home/AirForceChief/attendance_record
fi

var=1

while [ $var -lt 51 ]
do
    cat attendance.log|grep "Army$var"|grep $(date +%F)|grep "YES"|awk '{print $1 $2}'>>/home/ArmyGeneral/attendance_record
    cat attendance.log|grep "Navy$var"|grep $(date +%F)|grep "YES"|awk '{print $1 $2}'>>/home/NavyMarshal/attendance_record
    cat attendance.log|grep "AirForce$var"|grep $(date +%F)|grep "YES"|awk '{print $1 $2}'>>/home/AirForceChief/attendance_record
    
    var='expr $var + 1'
done


