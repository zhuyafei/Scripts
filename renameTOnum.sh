#!/bin/bash
num=1
dir=$1
for i in $(find ${dir} -type f)
do
	mv $i $dir/${num}.png
	((num++))
done


