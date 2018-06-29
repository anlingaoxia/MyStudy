##export：设置或显示环境变量
如果一个脚本要设置一个环境变量，那么需要将这些变量“export”出来，即通知脚本本地的环境。
export命令只能影响到子进程，但是source 命令能使得不产生子进程
`export [-fnp] [key]=[value]`
-f　 key为函数名称
-n　不再输入该变量到后续进程中去
-p　列出所有环境变量

export命令的周期到进程死亡，如果需要一直保留，需要加入到SHELL启动文件中。

##tput
```
tput cols //终端宽度
tput lines //终端高度
tput longname //终端名称
tput cupt x y //移动光标到x y处
```

##stty
???

##date


##env:???
`env -i PATH=${path} //临时改变环境变量`

##unset:删除变量或函数
`unset [-v] ${param} //删除变量`
`unset -f ${param} //删除函数`

##mv:移动或重命名dir
mv -i 移动之前会询问

##mkdir:创建目录
mkdir -p 创建过程中会创建丢失的路径目录

##cat:连接或显示文件

##head:显示一个或多个文件的前几行或前几个字节

##read:从标准输入中读取一行

##grep:搜索字符串

##shift:删除参数
```
shift 1 #删除开头的1个参数
shift 2 #删除开头的2个参数
```

##getopt:分析命令行标志和参数

##sort:行排序 & 字段排序

##uniq:报告或删除文件中重复的行

##wc:统计文本行数、字数、字符数

