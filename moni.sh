#!/bin/bash
while sleep 2
do 
echo '***date***' 
date +'%H:%M:%S'
echo '***Disk Space***'
 df -h 
 echo '*****Memory *****'
 free -m 
 echo '***CPU****'
 top -b -n 1 | head -n 9 
  echo '***Connections****' 
netstat -an | awk '/tcp/ {print $6}' | sort | uniq -c 
   done

