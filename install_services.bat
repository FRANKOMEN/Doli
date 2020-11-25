@echo off
REM --------------------------------------------------------
REM This script install Apache and Mysql DoliWamp services
REM --------------------------------------------------------

echo ---- Execute install_services.bat >> doliwamp.log 2>>&1

REM NET STOP doliwampapache
REM NET STOP doliwampmysqld 

cd "c:/dolibarr"

REM Apache x.x
.\bin\apache\apache2.4.41\bin\httpd.exe -k install -n doliwampapache >> doliwamp.log 2>>&1
REM reg add HKLM\SYSTEM\CurrentControlSet\Services\doliwampapache /V Start /t REG_DWORD /d 3 /f

REM Mysql 5.0-
REM .\bin\mysql\mysql10.4.10\bin\mysqld.exe --install-manual doliwampmysqld
REM .\bin\mysql\mysql10.4.10\bin\mysqld.exe --install doliwampmysqld
REM Mysql 5.1+
REM .\bin\mysql\mysql10.4.10\bin\mysqld.exe --install doliwampmysqld
REM Mariadb
REM The mysql_install_db allows to not provide files into mysql dir but does not return to prompt so install hangs
REM .\bin\mariadb\mariadb10.4.10\bin\mysql_install_db.exe --datadir=c:/dolibarr/bin/mariadb/data --port=3306 --password=WAMPMYSQLXXX >> doliwamp.log 2>>&1
.\bin\mariadb\mariadb10.4.10\bin\mysql_install_db.exe --datadir=c:/dolibarr/bin/mariadb/data --port=3306 >> doliwamp.log 2>>&1
.\bin\mariadb\mariadb10.4.10\bin\mysqld.exe --install doliwampmysqld >> doliwamp.log 2>>&1

echo ---- End script >> doliwamp.log 2>>&1

REM pause
