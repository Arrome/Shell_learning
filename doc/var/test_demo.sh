var=_var
_var="abc def"
var1="abc def ggg"
echo ${!var}
echo ${!var*}
echo "${!var@}"