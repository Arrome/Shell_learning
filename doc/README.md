# 总结

1. grep命令查到结果返回为0，否则为1（非零）
2. 管道命令，fork子shell
3. 子shell可以访问父shell变量，父不能访问子shell变量
4. while read 会读取输入重定向，循环内出现输出重定向会切断，只输出第一行
```
exec 3<filepath
#读取文件描述符3内容
while read -u 3 line
do
    :
done
exec 3<&-
```