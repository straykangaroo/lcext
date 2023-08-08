# lcext

Rename files (given on the command line) so that they have lower case extensions.
<br>
Files already having a lower case extension or not having an extension at all are left untouched.
We define a file *"extension"* as any (if any) characters following the first dot (if present) in a file name.

version	1.0, 2020-10-09

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

[https://github.com/stray-kan/argolis](https://github.com/stray-kan/lcext)
