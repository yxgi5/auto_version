@echo off
set PATH=D:\qp\qtools\bin;D:\qp\qtools\mingw32\bin;D:\Program Files\Git\bin;D:\Program Files\Git\mingw64\bin;%PATH%
:start mintty.exe -
:start mintty.exe
:bash.exe -
:bash.exe
:make.exe clean

echo "./clean.sh" | .\bash.bat
:echo "ls" "-la" | .\bash.bat

:echo `make clean` | bash.bat
:echo "make" "clean" | bash.bat