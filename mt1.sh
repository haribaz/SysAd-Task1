#!/bin/bash

sudo useradd ChiefCommander -m -p $(openssl passwd -1 ChiefCommander)

sudo useradd ArmyGeneral -m -p $(openssl passwd -1 ArmyGeneral)
sudo useradd NavyMarshal -m -p $(openssl passwd -1 NavyMarshal)
sudo useradd AirForceChief -m -p $(openssl passwd -1 AirForceChief)

var=1

while [ $var -lt 51 ]
do 
   sudo useradd Army$var -m -p $(openssl passwd -1 Army$var) 
   var='expr $var + 1'
done


while [ $var -lt 51 ]
do 
   sudo useradd Navy$var -m -p $(openssl passwd -1 Navy$var)
   var='expr $var + 1'
done

while [ $var -lt 51 ]
do 
   sudo useradd AirForce$var -m -p $(openssl passwd -1 AirForce$var) 
    var='expr $var + 1' 
done
