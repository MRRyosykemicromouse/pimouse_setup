#!/bin/bash -xve

exec 2> /home/ubuntu/pimouse_setup/tmp/setup.log

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep 1
chmod 666 /dev/rt*

echo 0> /dev/rtmotoren0
echo 1 | tee /dev/rtled*
sleep 1
echo 0 | tee /dev/rtled*

