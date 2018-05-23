##标识"#!"
```
#! /bin/sh 表明使用的是sh解释器来执行脚本
#! /bin/bash -l
#! /usr/bin/python 调用python解释器来执行
```
##调用进程
直接执行外部命令：fork子进程，不能改变父进程的属性
source命令执行外部命令：直接在父命令中执行，可以改变父进程的属性

##脚本执行
有两种形式：
1. 直接使用命令执行：bash *.sh
2. 使得脚本变为可执行文件 chmod +x *.sh，然后使用 ./*.sh命令即可以执行

每个命令或者命令序列是通过分号或者换行符来进行分隔的：
```
$ cmd1;cmd2
等同于：
$ cmd1
$ cmd2
```

##引号
""为弱引用，即会替换有$符号的变量
''为强引用，不会替换任何变量

##注释
符合"#"表示注释

#变量
变量分为局部变量和全局变量
局部变量在scrope中必须用local声明，否则也是全局变量，全局可见。
##变量的声明
```
var=123
var = 123 为相等判断
变量的声明不需要使用$
```

##变量的赋值
```
var1=123;
var2=$var1
```

##命令"echo"
```
1. echo 无单双引号：无法使用分号，分号在shell中用作命令定界符
2. echo ''：单引号的作用是吧中间的所有字符都作为字符串来对待
3. echo ""：双引号会对一些特殊的字符有区别的对待
4. echo会自动添加换行符
5. echo $#var 打印var字符串的长度
6. echo $SHELL | $0 打印出shell种类
```

##检查超级用户
```
if [ $UID -ne 0 ]; then
echo Non root user. Please run as root.
else
echo Root user
fi
root用户的UID是0
```

##文件描述符
0：stdin标准输入
1：stdout标准输出
2：stderr标准错误
```
覆写文件：
echo "${content}" > *.txt
追加文件：
echo "${content}" >> *.txt
```

##算数操作
> let | [　] 基本算数操作，只支持整数运算，不支持浮点数运算

> 使用let时候不需要加上\$，但是使用[　]的时候需要加上\$

> bc 用于浮点数运算
>1. 设置小数精度 scale=
>2. 进制转换 obase=, ibase=, 其中obase为输出的进制，ibase为输入的进制，默认为10进制
>3. 计算平方根：sqrt()


## 数组
* 定义数组
```
1. arr=(0 1 2 3)
2. arr[0]=0;
   arr[1]=1
   arr[2]=2
   arr[3]=3
```

* 打印数组元素和数组
```
echo \${arr[0]} //打印数组元素
echo \${arr[*]} //打印数组
```

* 显示数组长度
`echo ${#arr[*]}`

##关联数组
* 定义关联数组
`declare -A assArr`

* 关联数组赋值
1. `assArr=([${key1}]=${val1} [${key2}]=${val2})`
2. `assArr[${key}]=${val}`

* 打印关联数组
`echo ${assArr[${key}]}`

* 列出数组索引
`echo ${!assArr[*]}`
`echo ${!assArr[@]}`

##别名
* 在Terminal中创建&删除别名
- 创建别名：`alias ${name}='${script}' //这种方式创建的别名只能在该terminal中使用`
- 删除别名：`unalias ${name}`
- 
* 在.bashrc中创建&删除别名
`echo '${alias_script}' >> ~/.bashrc //.bashrc中创建的在所有的terminal中都能使用`
删除的话只需要删除删除~/.bashrc中相应的语句就行了

* 别名转义
\${alias} 就能使该命令执行别名之前的命令