@echo off
REM --------------------------------------------------------
REM This script install Apache and Mysql DoliWamp services
REM --------------------------------------------------------

cd "c:/dolibarr"

echo ---- Execute uninstall_services.bat >> doliwamp.log 2>>&1
NET STOP doliwampapache
.\bin\apache\apache2.4.41\bin\httpd.exe -k uninstall -n doliwampapache

NET STOP doliwampmysqld 
REM Mysql 5.0-
REM .\bin\mysql\mysql10.4.10\bin\mysqld-nt.exe --remove doliwampmysqld
REM Mysql 5.1+
REM .\bin\mysql\mysql10.4.10\bin\mysqld.exe --remove doliwampmysqld
REM Maraiadb
.\bin\mariadb\mariadb10.4.10\bin\mysqld.exe --remove doliwampmysqld

REM wampmanager.exe -quit -id={doliwampserver}
echo ---- End script >> doliwamp.log 2>>&1

REM pause
