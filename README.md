# lcext

Rename files (given on the command line) changing the file extension to lower case.

Files already having a lower case extension or not having an extension at all are left untouched.
We define a file "extension" as the sequence of any (if any) characters following the first dot (if present) in a file name.


## usage

	lcext.sh [-h] [FILE ... ]

### options

`-h`	print some help and exit immediately

### example
	abc.PNG		-> abc.png
	ABC.JPeG	-> ABC.jpeg
	noext.		-> noext.
	good.txt	-> good.txt
	nodot		-> nodot
	MUL.TIP.LE	-> MUL.tip.le


## License

Distributed under the MIT License. See LICENSE.txt for more information.


## Contact

[https://github.com/straykangaroo/lcext](https://github.com/straykangaroo/lcext)
