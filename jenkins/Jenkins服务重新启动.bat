@echo off
for /f "skip=3 tokens=4" %%i in ('sc query Jenkins') do set "zt=%%i" &goto :next
:next
if /i "%zt%"=="RUNNING" (goto running)
if /i "%zt%"=="STOPPED" (goto stopped)
:running
echo Jenkins ������������������������
net stop Jenkins
net start Jenkins
echo Jenkins ��������������
ping 127.0.0.1 -n 4 >nul
exit
:stopped
echo Jenkins ������ֹͣ����������
net start Jenkins
echo Jenkins ����������
ping 127.0.0.1 -n 4 >nul
exit