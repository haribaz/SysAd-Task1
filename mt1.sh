#!/bin/bash

sudo useradd ChiefCommander -m -p $(openssl passwd -1 ChiefCommander)

sudo useradd ArmyGeneral -m -p $(openssl passwd -1 ArmyGeneral)
sudo useradd NavyMarshal -m -p $(openssl passwd -1 NavyMarshal)
sudo useradd AirForceChief -m -p $(openssl passwd -1 AirForceChief)

for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do 
   sudo useradd Army$var -m -p $(openssl passwd -1 Army$var) 
   
done

for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do 
   sudo useradd Navy$var -m -p $(openssl passwd -1 Navy$var) 
   
done

for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do 
   sudo useradd AirForce$var -m -p $(openssl passwd -1 AirForce$var) 
     
done
