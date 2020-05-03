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

var=1

while [ $var -lt 51 ]
do
   sudo chgrp group2 /home/Army$var
   var='expr $var + 1'
done

while [ $var -lt 51 ]
do
   sudo chgrp group3 /home/Navy$var
   var='expr $var + 1'
done

while [ $var -lt 51 ]
do
   sudo chgrp group4 /home/AirForce$var
   var='expr $var + 1'
done

#since group permissions for write are not given by default

while [ $var -lt 51 ]
do
   sudo chmod g+w /home/Army$var
   sudo chmod g+w /home/Navy$var
   sudo chmod g+w /home/AirForce$var
   var='expr $var + 1'
done







