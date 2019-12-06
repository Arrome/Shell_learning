#!/usr/bin/env bash


echo "========================= echo ==================================="
# 格式：echo -e "\033[字背景颜色;文字颜色m string \033[0m"

#  \033[   色彩开关
#  \033[0m 关闭所有属性
#  \033[1m 设置高亮度
#  \033[4m 下划线
#  \033[5m 闪烁
#  \033[7m 反显
#  \033[8m 消隐
#  \033[30m -- \033[37m 设置前景色
#  \033[40m -- \033[47m 设置背景色
#  \033[nA 光标上移n行
#  \033[nB 光标下移n行
#  \033[nC 光标右移n行
#  \033[nD 光标左移n行
#  \033[y;xH 设置光标位置
#  \033[2J 清屏
#  \033[K 清除从光标到行尾的内容
#  \033[s 保存光标位置
#  \033[u 恢复光标位置
#  \033[?25l 隐藏光标
#  \033[?25h 显示光标

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37


echo "========================= tput ==================================="
# tput 可移植性更强
BLACK=`tput setaf 0`
RED=`tput setaf 1`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
BLUE=`tput setaf 4`
MAGENTA=`tput setaf 5`
CYAN=`tput setaf 6`
WHITE=`tput setaf 7`

BOLD=`tput bold`
RESET=`tput sgr0`

echo -e"hello ${BOLD}${RED}some red text${RESET} world"
