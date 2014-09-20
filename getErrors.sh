#!/bin/bash

# Apache latest errors log
# 
# @author Gabriel Vargas <angel.wrt@gmail.com>

output="$HOME/Develop/logs";

if [ ! -f $output ]
  then
    mkdir -p $output;
fi

output="$output/latest_errors.log"

if [ $# -eq 0 ]
  then
    dir="log/apache2/error.log";
  else
    dir="www/$1/logs/error.log"
fi

echo "getting errors..." > $output;

sleep 1;

> $output;

sleep 1;

echo "====================================================================================================" > $output;
tail -15 /var/$dir >> $output;
echo "====================================================================================================" >> $output;

cat $output;
