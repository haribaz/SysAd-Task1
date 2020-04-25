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

for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do
    cat attendance.log|grep "Army$var"|grep $(date +%F)|grep "YES"|awk '{print $1 $2}'>>/home/ArmyGeneral/attendance_record
    cat attendance.log|grep "Navy$var"|grep $(date +%F)|grep "YES"|awk '{print $1 $2}'>>/home/NavyMarshal/attendance_record
    cat attendance.log|grep "AirForce$var"|grep $(date +%F)|grep "YES"|awk '{print $1 $2}'>>/home/AirForceChief/attendance_record
done


