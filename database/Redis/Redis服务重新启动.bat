@echo off
for /f "skip=3 tokens=4" %%i in ('sc query redis') do set "zt=%%i" &goto :next
:next
if /i "%zt%"=="RUNNING" (goto running)
if /i "%zt%"=="STOPPED" (goto stopped)
:running
echo Redis ������������������������
net stop redis
net start redis
echo Redis ��������������
ping 127.0.0.1 -n 4 >nul
exit
:stopped
echo Redis ������ֹͣ����������
net start redis
echo Redis ����������
ping 127.0.0.1 -n 4 >nul
exit