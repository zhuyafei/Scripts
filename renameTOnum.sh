#!/bin/bash
if [ $# != 2 ]; then
	echo -ne "Arguments Error.\n"
	echo -ne "Usage:\n"
	echo -ne "\t$0 <Dir> <Extension>\n"
	exit 7
else
num=1
dir=$1
Extension=$2
for i in $(find ${dir} -type f)
do
	mv $i $dir/${num}.${Extension}
	((num++))
done
fi

