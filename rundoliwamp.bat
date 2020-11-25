@echo off
REM Launch Dolibarr
REM ---------------

REM If no lock file, we call install process
IF NOT EXIST dolibarr_documents\install.lock start "C:\Program Files (x86)\Internet Explorer\iexplore.exe" http://localhost:80/dolibarr/install/
REM FOR EDGE IF NOT EXIST dolibarr_documents\install.lock start microsoft-edge:"http://localhost:80/dolibarr/install/"

REM If lock file exists, we call home page
IF EXIST dolibarr_documents\install.lock start "C:\Program Files (x86)\Internet Explorer\iexplore.exe" http://localhost:80/dolibarr/
REM FOR EDGE IF EXIST dolibarr_documents\install.lock start microsoft-edge:"http://localhost:80/dolibarr/"
