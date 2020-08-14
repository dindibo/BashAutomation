#!/bin/bash

FAIL=0
EXT="./tests/"
FILES=$(cd $EXT;ls ???-test-*.sh -1)

for name in $FILES
do
	$(cd $EXT;./$name)
	res=$?
	if [ $res -eq 0 ]
	then
		echo "$name: OK"
	else
		echo "$name: FAIL"
		FAIL=1
		break
	fi
done

exit $FAIL
