@echo off
for /f "skip=3 tokens=4" %%i in ('sc query mysql') do set "zt=%%i" &goto :next
:next
if /i "%zt%"=="RUNNING" (goto running)
if /i "%zt%"=="STOPPED" (goto stopped)
:running
echo MySQL 服务已启动，正在停止
net stop mysql
echo MySQL 服务已停止
ping 127.0.0.1 -n 4 >nul
exit
:stopped
echo MySQL 服务已停止
ping 127.0.0.1 -n 4 >nul
exit