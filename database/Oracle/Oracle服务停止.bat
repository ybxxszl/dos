@echo off
for /f "skip=3 tokens=4" %%i in ('sc query OracleServiceORCL') do set "zt=%%i" &goto :next
:next
if /i "%zt%"=="RUNNING" (goto running)
if /i "%zt%"=="STOPPED" (goto stopped)
:running
echo Oracle���ݿ����������������ֹͣ
net stop OracleServiceORCL
net stop OracleOraDb11g_home1TNSListener
echo Oracle���ݿ������ֹͣ
ping 127.0.0.1 -n 4 >nul
exit
:stopped
echo Oracle���ݿ������ֹͣ
ping 127.0.0.1 -n 4 >nul
exit