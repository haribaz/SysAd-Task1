#!/bin/sh

#run this file as sudo

chmod +x mt1.sh
chmod +x mt2.sh
chmod +x mt3.sh
chmod +x mt4.sh
chmod +x mt5.sh
chmod +x hm1.sh


alias userGenerate="./mt1.sh"
userGenerate

alias permit="./mt2.sh"
permit

alias autoSchedule="./mt3.sh"
echo "0 0 * * * autoSchedule"|crontab -

alias attendance="./mt4.sh"
echo "0 6 * * * attendance"|crontab -

alias record="./mt5.sh"
echo "Type the day of the week(0-6)"
read var
record $var

alias finalattendance="sudo ./hm1.sh"
finalattendance


