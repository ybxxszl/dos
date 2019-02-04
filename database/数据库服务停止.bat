@echo off

echo MySQL 数据库服务、MongoDB 数据库服务、Redis 数据库服务正在停止
echo.
echo.

start /wait C:\Users\ybxxszl\Documents\控制数据库服务\MySQL\MySQL服务停止.bat

echo MySQL 数据库服务已停止
echo.

start /wait C:\Users\ybxxszl\Documents\控制数据库服务\MongoDB\MongoDB服务停止.bat

echo MongoDB 数据库服务已停止
echo.

start /wait C:\Users\ybxxszl\Documents\控制数据库服务\Redis\Redis服务停止.bat

echo Redis 数据库服务已停止
echo.
echo.

echo MySQL 数据库服务、MongoDB 数据库服务、Redis 数据库服务已停止

ping 127.0.0.1 -n 5 >nul

exit