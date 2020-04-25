#!/bin/bash



for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do
if [ ! -f /home/Army$var/post_allotted ]
then
  touch /home/Army$var/post_allotted
fi

if [ -s /home/Army$var/post_allotted ]
then
  echo "       DATE                POST        "
fi
done

for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do
if [ ! -f /home/Navy$var/post_allotted ]
then
   touch /home/Navy$var/post_allotted
fi

if [ -s /home/Navy$var/post_allotted ]
then
  echo "       DATE                POST        "
fi
done

for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do
if [ ! -f /home/AirForce$var/post_allotted ]
then
   touch /home/AirForce$var/post_allotted
fi

if [ -s /home/AirForce$var/post_allotted ]
then
  echo "       DATE                POST        "
fi
done



for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do

    cat position.log|grep "Army$var"|grep $(date +%F)|awk '{print $1 $3 $4}'>>/home/Army$var/post_allotted
    cat position.log|grep "Navy$var"|grep $(date +%F)|awk '{print $1 $3 $4}'>>/home/Navy$var/post_allotted
    cat position.log|grep "AirForce$var"|grep $(date +%F)|awk '{print $1 $3 $4}'>>/home/AirForce$var/post_allotted
done
