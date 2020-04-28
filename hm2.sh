#!/bin/bash

> /home/ChiefCommander/temp
> /home/ChiefCommander/distfile
> /home/ChiefCommander/nearest10

D=$(date +%F)

join -1 2 -2 2 position.log attendance.log|awk '{print $1,$2,$3,$4,$6}'|grep "Army.*"|grep "YES"|sed -n "/2020-04-11/,/$D/p">/home/ChiefCommander/temp


calc (){
 
 a1=$1
 b1=$2

 a=$(echo $a1 | awk -F "°" '{print $2}')
 b=$(echo $b1 | awk -F "°" '{print $2}')
 
  lat=28.7041
  lon=77.1025

  (awk -v a=$a -v b=$b -v lat=$lat -v lon=$lon '
  function asin(t){
   i=(sqrt(1-(t*t)))
   r=atan2(t,i)
   return r
   }

    function acos(t){
     i=(sqrt(1-(t*t)))
     return atan2(i,t) }

    function atan(t){ return atan2(t,1) }
    BEGIN{

    dLat=(a-lat)*3.14159/180.0
    dLon=(b-lon)*3.14159/180.0
 
    lat=((lat)*3.14159/180.0)
    a=((a)*3.14159/180.0)
 
    l=((sin(dLat/2))*(sin(dLat/2))+(sin(dLon/2))*(sin(dLon/2))*(cos(lat))*(cos(lat)))

    rad=6371
   
    p=sqrt(l)

    c=2*asin(p)

    dist=(rad*c);
 
    print dist
}')
}

input="/home/ChiefCommander/temp"

while IFS= read -r line
do
  var1=$(echo "$line"|awk '{print $3}')
  var2=$(echo "$line"|awk '{print $4}')
  var3=$(echo $(calc "$var1" "$var2"))
  echo "$line" "$var3">>/home/ChiefCommander/distfile
done < "$input"

cat /home/ChiefCommander/distfile|sort +5n|awk '{print $1,$2}'|sed -n 1,10p>>/home/ChiefCommander/nearest10

