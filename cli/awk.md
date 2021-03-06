# awk

**适合**:格式化文本，对文本进行较复杂格式化处理<br>
**语法**：`awk [options] 'Pattern{Action}' file`<br>
逐行读入，以**空格为默认分隔符**将每行切片，切开的部分进行分析处理。<br>
**内置变量**：
  1. `$0` 整行
  2. `$NF` 当前行分割后的最后一列
  3. `NF` 当前行被分割符切开后，一共有几个字段
  4. `NR` 行号，当前处理的文本行的行号
  5. `FNR` 多个文件时，分别对每个文件的行数进行计数
  6. `FILENAME` 当前文件名
  7. `FS` 指定输入分隔符，需要使用 -v 选项指定对应变量，例如：`-v FS='#'`
  8. `OFS` 输出分隔符
  9. `RS` 输入记录分隔符（输入换行符），指定输入时的换行符
  10. `ORS` 输出记录分隔符（输出换行符），指定输出时的换行符
  11. `ARGC` 命令行参数个数
  12. `ARGV` 保存命令行各参数数组

**内置函数**：
  1. 算术函数
  2. 字符串函数
  3. 其他

**自定义变量**：
  1. `-v varname=value`
  2. 在程序中直接定义

**特殊模式**：
  1. `BEGIN` 处理文本之前需要执行的操作
  2. `END`   处理完所有行之后需要执行的操作

**其他模式**：
  1. 关系运算模式
  2. 正则模式，扩展正则表达式用法`/正则表达式/`
    * 行范围模式：`awk '/正则1/,/正则2/{Action}' file`从正则1匹配到的行开始到正则2匹配的行结束，执行动作
    * `x~/正则/`  对应的正则匹配则为真
    * `x!~/正则/` 对应的正则不匹配则为真
> 模式表示为条件，可以直接替换为真和假，0或者空字符串表示”假“，非0或者非空字符串表示为”真“

**分隔符**：
  1. 输入分隔符FS（field separator）, `-F#`或`-v FS='#'`
  2. 输出分隔符OFS（output field separator）：输出屏幕的分隔符,`-v OFS='---'`

**printf格式化**：
  1. printf 动作输出文本不会换行，如果需要换行，在对应“格式替换符”后加入`\n`转义
  2. 使用 printf 动作时， ”指定格式“ 与 ”被格式化文本“ 间需要 ”逗号“ 隔开，例如：`awk '{printf "%s\n",$1}' test1`
  3. 使用 printf 动作时，“格式”中的”格式替换符“必须与”被格式化的文本“一一对应,例如：`awk 'BEGIN{printf "%s\n%s\n",1,2}'`
-----------------
* `!a[$0]++` 和`！a[$1]++`   
    * `!a[$0]++`可用来去除重复记录行.例如：`awk '!a[$0]++' test.txt`
    * `！a[$1]++` 例如：`awk '！a[$1]++' test.txt` 第一个域(列)相同的多条行记录被删除，只保留重复记录中第一次出现的行记录
* `i=!i` 打印奇数行；`!(i=!i)` 打印偶数行
* `awk '$1=$1' filename` 使用`$NF=$NF`是为了激活$0重新赋值，使OFS生效
* `$0=$0` 与上相反，修改$0的值可以促使awk重新计算字段$1...和字段数NF的的值,通常是在改变FS后而需要输出$1...或者NF时这样做
