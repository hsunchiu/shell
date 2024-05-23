#! /bin/sh
ssh apue "su root -c '/sbin/shutdown -p now'"
sleep 5
ps wwaux | awk '/UT[M].app/ { print $2 }' | xargs kill
