#!/bin/bash
for filename in *.txt
do
count=`echo filename | grep -c 'http' $filename`
if [ "$count" != 0 ]
then
echo "$filename : $count"
fi
done
