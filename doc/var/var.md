# 变量

> 注意：shell脚本中定义变量是global的(包括函数中变量，都到shell结束或被显示删除为止)

局部变量
------
关键字： `local`<br>
一般用于shell脚本的函数中<br>
注意：若同名，shell函数定义的local变量会屏蔽脚本定义的global变量

只读变量
-----
关键字：`readonly`<br>
readonly用来定义只读变量，一旦使用readonly定义的变量在脚本中就不能更改

数组变量
-------
空格分割，或换行分割：例如` array_name=(value1 ... valuen)`或
```
array_name=(
  value1
  ...
  valuen
)
```
环境变量
--------

##### 设置系统环境变量命令

* declare 声明变量和修改变量属性，同typeset，set
* set 设置各种shell选项（
设置当前shell的执行方式）或列出shell变量（用户变量和关键字变量）
* export 仅限于该次登录，当前shell有效（环境变量）
* env 用于显示环境变量(环境变量)


IFS
-------

1. 默认值为：空白（包括：空格，tab, 和新行)，将其ASSII码用十六进制打印出来就是：20090a
2. IFS对空格的空白的处理和其他字符不一样，左右两边的纯空白会被忽略，多个连续的空白被当成一个IFS处理
3. 只使用IFS第一个字符作为分割符
4. awk中的FS（域分隔符）也和IFS有类似的用法和作用


$$var
--------
例如：传入参数$n与awk $i冲突时，使用 $$
