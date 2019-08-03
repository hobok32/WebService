@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\xampp\xampp\hypersonic\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\xampp\xampp\ingres\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\ingres\scripts\ctl.bat START)
if exist C:\xampp\xampp\mysql\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\mysql\scripts\ctl.bat START)
if exist C:\xampp\xampp\postgresql\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\postgresql\scripts\ctl.bat START)
if exist C:\xampp\xampp\apache\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\apache\scripts\ctl.bat START)
if exist C:\xampp\xampp\openoffice\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\openoffice\scripts\ctl.bat START)
if exist C:\xampp\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\apache-tomcat\scripts\ctl.bat START)
if exist C:\xampp\xampp\resin\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\resin\scripts\ctl.bat START)
if exist C:\xampp\xampp\jboss\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\jboss\scripts\ctl.bat START)
if exist C:\xampp\xampp\jetty\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\jetty\scripts\ctl.bat START)
if exist C:\xampp\xampp\subversion\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\xampp\xampp\lucene\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\lucene\scripts\ctl.bat START)
if exist C:\xampp\xampp\third_application\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\xampp\xampp\third_application\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\third_application\scripts\ctl.bat STOP)
if exist C:\xampp\xampp\lucene\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\xampp\xampp\subversion\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\subversion\scripts\ctl.bat STOP)
if exist C:\xampp\xampp\jetty\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\jetty\scripts\ctl.bat STOP)
if exist C:\xampp\xampp\hypersonic\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\xampp\xampp\jboss\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\jboss\scripts\ctl.bat STOP)
if exist C:\xampp\xampp\resin\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\resin\scripts\ctl.bat STOP)
if exist C:\xampp\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\xampp\xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\xampp\xampp\openoffice\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\openoffice\scripts\ctl.bat STOP)
if exist C:\xampp\xampp\apache\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\apache\scripts\ctl.bat STOP)
if exist C:\xampp\xampp\ingres\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\ingres\scripts\ctl.bat STOP)
if exist C:\xampp\xampp\mysql\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\mysql\scripts\ctl.bat STOP)
if exist C:\xampp\xampp\postgresql\scripts\ctl.bat (start /MIN /B C:\xampp\xampp\postgresql\scripts\ctl.bat STOP)

:end

