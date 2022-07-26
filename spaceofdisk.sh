#!/bin/bash

Threshold=25
to="umashangarisai@gmail.com"
for path in `df -h|grep -vE '(Filesystem|tmpfs)' | awk '{print $5}' | cut -f 1 -d "%"`

do

if [ $path -gt $Threshold ]
   then
     echo "disk warning!!!" |sendmail $to
   else
     echo "disk ok!!"
fi

done
