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