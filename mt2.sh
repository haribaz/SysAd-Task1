#!/bin/bash

#group1(ChiefCommander, Home Directories of ArmyGeneral, Navy Marshal and AirForceChief)
#group2(ChiefCommander, ArmyGeneral, Home Directories 50 Army soldiers)
#group3(ChiefCommander, NavyMarshal, Home Directories 50 Navy soldiers)
#group4(ChiefCommander, AirForceChief, Home Directories 50 AirForce soldiers)  

for var in 1 2 3 4
do
   sudo groupadd group$var
done

sudo usermod -a -G group1,group2,group3,group4 ChiefCommander

sudo usermod -a -G group1,group2 ArmyGeneral

sudo usermod -a -G group1,group3 NavyMarshal

sudo usermod -a -G group1,group4 AirForceChief

sudo chgrp group1 /home/ArmyGeneral

sudo chgrp group1 /home/NavyMarshal

sudo chgrp group1 /home/AirForceChief

for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do
   sudo chgrp group2 /home/Army$var
done

for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do
   sudo chgrp group3 /home/Navy$var
done

for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do
   sudo chgrp group4 /home/AirForce$var
done

#since group permissions for write are not given by default

for var in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do
   sudo chmod g+w /home/Army$var
   sudo chmod g+w /home/Navy$var
   sudo chmod g+w /home/AirForce$var
done







