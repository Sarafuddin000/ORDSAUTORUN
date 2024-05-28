@echo off

REM Set the ORACLE_HOME and PATH variables
set ORACLE_HOME=C:\path\to\oracle_home
set PATH=%ORACLE_HOME%\bin;%PATH%


REM Check if the Oracle Listener service is running
:check_listener
echo Checking if the listener service is running...
net start | find /i "OracleOraDB19Home1TNSListener" > nul
if %errorlevel% neq 0 (
    echo Listener service is not running, waiting...
    REM Start the Oracle Listener
	echo Starting the Oracle Listener...
	net start OracleOraDB19Home1TNSListener
	timeout /t 20
    goto check_listener
)


echo Listener service is running...


REM Check if the Oracle database service is running
:check_db
echo Checking if the database service is running...
net start | find /i "OracleServiceORCL" > nul
if %errorlevel% neq 0 (
    echo Database service is not running, waiting...
	REM Start the Oracle Database service if not running
	echo Starting the Oracle Database service...
	net start OracleServiceORCL
	timeout /t 60
    goto check_db
)


echo Database service is running, starting ORDS...


REM Change to the ORDS directory
cd C:\oracle_db\ords


REM Start ORDS
java -jar ords.war --config C:\oracle_db\ords\config serve

pause
