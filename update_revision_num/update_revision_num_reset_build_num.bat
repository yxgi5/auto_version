@echo off
:set PATH=D:\qp\qtools\bin;D:\qp\qtools\mingw32\bin;D:\Program Files\Git\bin;D:\Program Files\Git\mingw64\bin;%PATH%
:start mintty.exe -
:start mintty.exe
:bash.exe -
:bash.exe
:make.exe

echo "./update_revision_num_reset_build_num.sh" | bash.bat
