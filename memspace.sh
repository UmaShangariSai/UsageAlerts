#!/bin/bash

threshold=25
to="umashangarisai@gmail.com"
mem_free=`free -m | grep "Mem" | awk '{print $4+$6}'`
 echo "memory space remaining : $mem_free MB"
if [ $mem_free -lt $threshold ]
   then
     echo "memory warning!!!"|sendmail $to
   else
     echo "memory okay!!"
fi
