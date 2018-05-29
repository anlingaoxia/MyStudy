#!/usr/bin/env bash 
echo '$#: '"$#" ##参数数量
echo '$@: '"$@"	##显示所有参数
echo '$*: '"$*"	##显示所有参数

echo '$!: '"$!"	##后台运行的最后一个进程ID号
echo '$$: '"$$"	##脚本运行的当前进程的ID号

echo '$%: '"$%"	##无效
echo '$^: '"$^"	##无效
echo '$&: '"$&"	##无效