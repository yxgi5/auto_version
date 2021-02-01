版本格式
major.minor.revision.build

可以按需要进行更新
高字段更新了，低字段自动清零。例如revision更新，那么会重置build

for win10(need bash)
just run the *.bat scrips
for linux
run the *.sh scrips or make / make clean


一般只更新build号

example1
makefile工程示例

example2
keil工程示例

example3
svn等提交号产生build号参考


基于bash脚本，for win10 需要添加其他工具:

我的bash等工具在
D:\Program Files\Git\bin
D:\Program Files\Git\mingw64\bin

gcc编译器(可选，因为makefile工程例子需要)，例如mingw32，我安装在
D:\qp\qtools\mingw32\bin