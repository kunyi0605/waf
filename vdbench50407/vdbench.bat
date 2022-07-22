@echo off

set dir=%~dp0
set PATH=%PATH%;C:\Program Files (x86)\Java\jre1.8.0_311\bin;
set cp=%dir%;%dir%classes;%dir%vdbench.jar
set java=java

if "%1" EQU "SlaveJvm" (
 %java% -client -Xmx512m -Xms64m -cp "%cp% " Vdb.SlaveJvm %*
) else (
 %java% -client -Xmx256m -Xms64m -cp "%cp% " Vdb.Vdbmain %*
)
