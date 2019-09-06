echo $#
echo $@
echo ${#@}
echo ${@#}

# "${@--help}" 同 "${@#"--help"}"
if [[ "${@--help}" == '' ]];then
  echo ".."
fi