@echo off
for /f "skip=3 tokens=4" %%i in ('sc query mysql') do set "zt=%%i" &goto :next
:next
if /i "%zt%"=="RUNNING" (goto running)
if /i "%zt%"=="STOPPED" (goto stopped)
:running
echo MySQL 服务已启动，正在重新启动
net stop mysql
net start mysql
echo MySQL 服务已重新启动
ping 127.0.0.1 -n 4 >nul
exit
:stopped
echo MySQL 服务已停止，正在启动
net start mysql
echo MySQL 服务已启动
ping 127.0.0.1 -n 4 >nul
exit