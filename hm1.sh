#!/bin/bash

touch /home/ChiefCommander/attendance_report

var=1

while [ $var -lt 51 ]
do
    cat attendance.log|grep "Army$var">>/home/ChiefCommander/attendance_report
    var='expr $var + 1'
done

while [ $var -lt 51 ]
do
    cat attendance.log|grep "Navy$var">>/home/ChiefCommander/attendance_report
    var='expr $var + 1'
done

while [ $var -lt 51 ]
do
    cat attendance.log|grep "AirForce$var">>/home/ChiefCommander/attendance_report
    var='expr $var + 1'
done

