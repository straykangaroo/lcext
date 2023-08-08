#!/bin/sh

# lcext
#
# Rename files (given on the command line) so that they have lower case extensions.
# Files already having a lower case extension or not having an extension at all are left untouched.
# We define a file "extension" as any (if any) characters following the first dot (if present) in a file name.
#
# example:
#
# abc.PNG		-> abc.png
# ABC.JPeG		-> ABC.jpeg
# noext.		-> noext.
# good.txt		-> good.txt
# nodot			-> nodot
# MUL.TIP.LE	-> MUL.tip.le
#
# @version	1.0
# @date		2020-10-09

if [ $# -lt 1 ] || [ "$1" = "-h" ]; then
cat<<END
usage:  $0 [-h] [FILE]...
options:
	-h     print this help and exit without doing anything

Rename files (given on the command line) so that they have lower case extensions.
Files already having a lower case extension or not having an extension at all are left untouched.
We define a file "extension" as any (if any) characters following the first dot (if present) in a file name.

example:

abc.PNG		-> abc.png
ABC.JPeG	-> ABC.jpeg
noext.		-> noext.
good.txt	-> good.txt
nodot		-> nodot
MUL.TIP.LE	-> MUL.tip.le

END
	exit;
fi

for F in $@; do
	# -E switch (synonymous of -r) needed to avoid having to escape parenthesis
	# search for:	a dot followed by at least one character
	# replace with:	a dot followed by those characters but turned to lower case
	NEW=`echo $F | sed -E "s/\.(.+)/.\L\1/"`
	if [ "$F" != "$NEW" ]; then
		mv "$F" "$NEW"
	fi
done
