#!/bin/bash
date=`date '+%d.%m.%Y'`
cd $1
x=$(find . -type f | wc -l)
tasklist > log.txt
b=$(wc -m log.txt | cut -c1-6)
echo $x
echo $b
let a=$x*$b
echo $a > $date.txt