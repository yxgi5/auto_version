#!/bin/sh
IN=version.in
HEAD=version.h
SRC=version.cc

v="0.0.0.0"

echo "#include \"version.h\"" > $SRC
echo "char Version[]=\"$v\";" >> $SRC
echo $v>$IN

echo $v
