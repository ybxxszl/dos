@echo off
for /f "skip=3 tokens=4" %%i in ('sc query mysql') do set "zt=%%i" &goto :next
:next
if /i "%zt%"=="RUNNING" (goto running)
if /i "%zt%"=="STOPPED" (goto stopped)
:running
echo MySQL ������������������������
net stop mysql
net start mysql
echo MySQL ��������������
ping 127.0.0.1 -n 4 >nul
exit
:stopped
echo MySQL ������ֹͣ����������
net start mysql
echo MySQL ����������
ping 127.0.0.1 -n 4 >nul
exit