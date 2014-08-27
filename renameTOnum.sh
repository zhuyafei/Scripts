#!/bin/bash
if [ $# != 1 ]; then
	echo -ne "Arguments Error.\n"
	echo -ne "Usage:\n"
	echo -ne "\t$0 <Dir>\n"
	exit 7
else
num=1
dir=$1
for i in $(find ${dir} -type f)
do
	Extension=${i##*.}
	mv $i $dir/${num}.${Extension}
	((num++))
done
fi

