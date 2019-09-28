#!/bin/sh
### 或者使用`/usr/bin/env bash`，兼容大多系统

# 脚本调用其他脚本文件，先验证是否可用
_=$(command -v docker)
if [ "$?" != "0" ]; then
  printf -- "You don\'t seem to have Docker installed.\n"
  printf -- 'Get it: https://www.docker.com/community-edition\n'
  printf -- 'Exiting with code 127...\n'
  exit 127
fi