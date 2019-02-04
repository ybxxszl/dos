@echo off
for /f "skip=3 tokens=4" %%i in ('sc query OracleServiceORCL') do set "zt=%%i" &goto :next
:next
if /i "%zt%"=="RUNNING" (goto running)
if /i "%zt%"=="STOPPED" (goto stopped)
:running
echo Oracle数据库服务已启动，正在重新启动
net stop OracleServiceORCL
net stop OracleOraDb11g_home1TNSListener
net start OracleOraDb11g_home1TNSListener
net start OracleServiceORCL
echo Oracle数据库服务已重新启动
ping 127.0.0.1 -n 4 >nul
exit
:stopped
echo Oracle数据库服务已停止，正在启动
net start OracleOraDb11g_home1TNSListener
net start OracleServiceORCL
echo Oracle数据库服务已启动
ping 127.0.0.1 -n 4 >nul
exit