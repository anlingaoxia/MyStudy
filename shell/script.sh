#!/usr/bin/env bash 

foo1() {
	arr="$@"
	echo "arr: "$arr
	echo "arr size: "${#arr[*]}
	echo "arr size: "${#arr}
	for k in $arr
	do
		echo $k
	done
}

foo2() {
	for k in "$@"
	do
		echo $k
	done
}

bar1() {
	arr="$*"
	echo "arr: "$arr
	echo "arr size: "${#arr[*]}
	echo "arr size: "${#arr}
	for k in $arr
	do
		echo $k
	done
}

bar2() {
	for k in "$*"
	do
		echo $k
	done
}

# foo1 1 2 3 4
# foo2 a b c d
# bar1 5 6 7 8
# bar2 e f g h

baz() {
	arr1="$@"
	arr2="$*"
	if test "$arr1" == "$arr2"; then
		echo "true"
	else
		echo "false"
	fi
}

print() {
	echo $*
	echo $@
	echo "$*"
	echo "$@"
}

baz 1 2 3 4



