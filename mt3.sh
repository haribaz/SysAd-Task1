#!/bin/bash

var=1

while [ $var -lt 51 ]
do
if [ ! -f /home/Army$var/post_allotted ]
then
  touch /home/Army$var/post_allotted
fi

if [ -s /home/Army$var/post_allotted ]
then
  echo "       DATE                POST        "
fi
var='expr $var + 1'
donewhile [ $var -lt 51 ]

while [ $var -lt 51 ]
do
if [ ! -f /home/Navy$var/post_allotted ]
then
   touch /home/Navy$var/post_allotted
fi

if [ -s /home/Navy$var/post_allotted ]
then
  echo "       DATE                POST        "
fi
var='expr $var + 1'
done

while [ $var -lt 51 ]
do
if [ ! -f /home/AirForce$var/post_allotted ]
then
   touch /home/AirForce$var/post_allotted
fi

if [ -s /home/AirForce$var/post_allotted ]
then
  echo "       DATE                POST        "
fi
var='expr $var + 1'
done



while [ $var -lt 51 ]
do

    cat position.log|grep "Army$var"|grep $(date +%F)|awk '{print $1 $3 $4}'>>/home/Army$var/post_allotted
    cat position.log|grep "Navy$var"|grep $(date +%F)|awk '{print $1 $3 $4}'>>/home/Navy$var/post_allotted
    cat position.log|grep "AirForce$var"|grep $(date +%F)|awk '{print $1 $3 $4}'>>/home/AirForce$var/post_allotted
    
    var='expr $var + 1'
done
