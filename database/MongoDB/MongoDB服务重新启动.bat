@echo off
for /f "skip=3 tokens=4" %%i in ('sc query mongodb') do set "zt=%%i" &goto :next
:next
if /i "%zt%"=="RUNNING" (goto running)
if /i "%zt%"=="STOPPED" (goto stopped)
:running
echo MongoDB ������������������������
net stop mongodb
net start mongodb
echo MongoDB ��������������
ping 127.0.0.1 -n 4 >nul
exit
:stopped
echo MongoDB ������ֹͣ����������
net start mongodb
echo MongoDB ����������
ping 127.0.0.1 -n 4 >nul
exit