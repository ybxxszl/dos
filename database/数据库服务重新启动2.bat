@echo off

echo MySQL ���ݿ����Redis ���ݿ����������������
echo.
echo.

start /wait C:\Users\ybxxszl\Documents\�������ݿ����\MySQL\MySQL������������.bat

echo MySQL ���ݿ��������������
echo.

start /wait C:\Users\ybxxszl\Documents\�������ݿ����\Redis\Redis������������.bat

echo Redis ���ݿ��������������
echo.
echo.

echo MySQL ���ݿ����Redis ���ݿ��������������

ping 127.0.0.1 -n 5 >nul

exit