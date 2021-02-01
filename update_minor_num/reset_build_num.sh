#!/bin/sh
IN=version.in
HEAD=version.h
SRC=version.cc
v=`cat $IN | sed -n 's/\(.*\)/\1/p'`
bv=`echo $v | sed -n 's/[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.\([0-9][0-9]*\)/\1/p'`
bv=0
v=`echo $v | sed -n "s/\([0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.\)\([0-9][0-9]*\)/\1$bv/p"`
if [ -f $SRC ];then
ov=`cat $SRC | grep '=' | awk -F "=" '{print $2}' | sed -n 's/"\(..*\)";/\1/p'`
else
ov="0.0.0.0"
fi
if [ $ov != $v ];then
echo "#include \"version.h\"" > $SRC
echo "char Version[]=\"$v\";" >> $SRC
echo $v>$IN
fi
echo $v
