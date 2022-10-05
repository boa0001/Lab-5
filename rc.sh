#! /bin/sh
##Trial
#initialize variable

if [ $# -lt 1 ] || [ $# -gt 1  ]

then
	echo "You must input a single file!"
else

reverse=""

#read in data
name=`grep ">" $1`
sequence=`grep -v ">" $1`

#echo "Name: $name"

#calculate length of sequence
len=${#sequence}

#echo "Length: $len"

#loop through sequence in reverse

reverse=`echo $sequence | rev`

#echo "$sequence$reverse"

#complement sequence
rc=`echo $reverse | tr 'ATCG' 'TAGC'`

#echo "$rc"

echo $name >$1.rc
echo $rc >>$1.rc
fi
