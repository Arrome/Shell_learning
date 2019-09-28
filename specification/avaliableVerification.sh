#!/bin/sh
# 或者使用`/usr/bin/env bash`，兼容大多系统

set -x  # 每行命令本身，执行输出（涉及变量被替换为实际的值）
# 执行出错结束程序，类似于抛出异常。有些情况出错不会退出：
#   * pipeline非结尾部分，例如：error|ok
#   * 组合语句非结尾部分，例如：ok && error || other
#   * 一串语句的非结尾部分，例如：error；ok
#   * 判断语句中，例如 test，if，while等
set -e


#   先验证命令是否可用（脚本调用其他脚本文件时）
# 注意：
#    通常用 if mycommand；而不用 $? 判断命令返回结果

if [ $(command -v docker) ]; then
  printf -- "You don\'t seem to have Docker installed.\n"
  printf -- 'Get it: https://www.docker.com/community-edition\n'
  printf -- 'Exiting with code 127...\n'
  exit 127
fi

#  trap命令使用，捕获信号，允许用户给特定的流程注入函数调用
#     trap func EXIT  脚本退出，清理函数
#     trap func ERR