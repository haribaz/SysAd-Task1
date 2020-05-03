#!/bin/bash

var='expr 7-$1'
temp=$(date +%w)
final='expr $var+$temp'

if [ $(whoami) == ArmyGeneral ]
then
cat attendance.log|grep "Army.*"|grep $(date --date="$final days ago")
fi

if [ $(whoami) == NavyMarshal ]
then
cat attendance.log|grep "Navy.*"|grep $(date --date="$final days ago")
fi

if [ $(whoami) == AirForceChief ] 
then
cat attendance.log|grep "Airforce.*"|grep $(date --date="$final days ago")
fi
