@echo off

echo MySQL 数据库服务、Redis 数据库服务正在重新启动
echo.
echo.

start /wait C:\Users\ybxxszl\Documents\控制数据库服务\MySQL\MySQL服务重新启动.bat

echo MySQL 数据库服务已重新启动
echo.

start /wait C:\Users\ybxxszl\Documents\控制数据库服务\Redis\Redis服务重新启动.bat

echo Redis 数据库服务已重新启动
echo.
echo.

echo MySQL 数据库服务、Redis 数据库服务已重新启动

ping 127.0.0.1 -n 5 >nul

exit