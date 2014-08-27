#!/bin/bash

if [ $# != 2 ]; then
	echo -ne "Arguments Error.\n"
	echo -ne "\tUsage:\n"
	echo -ne "\t$0 <INPUTDIR> <OUTPUTTXT>\n"
	exit 7
fi

INPUTDIR=$1
OUTPUTTXT=$2
num=1

if [ -f ${OUTPUTTXT} ]; then
	rm -f ${OUTPUTTXT}
fi

for i in $(find ${INPUTDIR} -type f -name "*.txt"|grep -v "TimeNumber.txt"); do
	echo -ne "$((num++)): Processing \033[41;33m $i \033[0m" 
	line2=`sed -n '2p' $i`
#	echo "$i ${line2}\n" >> $OUTPUTTXT
	echo -e "$i\t${line2}" >> $OUTPUTTXT
	echo -ne "\t DONE!\n"
done
echo -ne "\n"
echo -ne "\t\tEND PROCESSING $((num-1)) TEXTS!\n"

