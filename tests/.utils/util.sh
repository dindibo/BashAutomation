#!/bin/sh

# $1 - program to run
# $2 - string to compare
assertString () {
	output="$($1)"
	if [ "$output" = "$2" ]
	then
		return 0
	else
		return 1
	fi
}
