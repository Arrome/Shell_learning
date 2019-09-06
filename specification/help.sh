#!/bin/sh
# 有参数且只有参数--help，则显示help信息
if [ ${#@} -ne 0 ] && [ "${@#"--help"}" = "" ]; then
  printf -- '...help...\n'
  exit 0
fi