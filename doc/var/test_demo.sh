var=_var
_var="abc def"
var1="abc def ggg"
echo ${!var}
echo ${!var*}
echo "${!var@}"


printf "============\n"
echo $#
echo $@
echo ${#@}
echo ${@#}

# "${@--help}" 同 "${@#"--help"}"
if [[ "${@--help}" == '' ]];then
  echo ".."
fi