# colon 冒号

作用：bash内建命令
* 空命令（占位符）
	* 返回码0，通常while循环中作为true使用
* 参数扩展
	* ${parameter:-word}
	* ${parameter:+word}
	* ${parameter:=word}
	* ${parameter:?word}
	* ${parameter:offset}
	* ${parameter:offset:length}
* 重定向
	`: > test.txt` 清空文件
* 注释符
	> 如有语法错误仍然报错
* 扩展模式匹配
    > `[[:class:]]`    通过class指定字符类别，class可以是POSIX标准中的下列关键字：alnum、alpha、ascii、blank、cntrl、digit、graph、lower、print、punct、space、upper、word、xdigit，其中word表示大小写字母、数字和下划线。<br>
           
例如：
```
var=helloBASH123
$ echo $var
helloBASH123
$ echo ${var//[[:digit:]]/0}
helloBASH000
$ echo ${var//[[:lower:]]/x}
xxxxxBASH123
$ echo ${var//[[:upper:]]/X}
helloXXXX123
```
* 三元运算符