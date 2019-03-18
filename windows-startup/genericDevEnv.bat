@ECHO off

SET devr=H:\devroot

SET sublimePath=%devr%\portable\SublimeText
SET switcherooPath=%devr%\portable\switcheroo
SET clinkPath=%devr%\portable\clink_0.4.9
SET publicAliases=%devr%\public
SET condaPath=C:\Continuum\anaconda3
SET downloads=C:\Users\username\Downloads

SET Path=%publicAliases%;%condaPath%;%Path%

prompt [$t$h$h$h$h$h$h]$p$g

:switcherooChoice
set /P c=Start Switcheroo[Y/N]?
if /I "%c%" EQU "Y" goto :startSwitcheroo
if /I "%c%" EQU "N" goto :clinkChoice
goto :switcherooChoice


:startSwitcheroo
echo Starting Switcheroo...
start %switcherooPath%\switcherooAdmin.lnk
goto :clinkChoice

:clinkChoice
set /P c=Start Clink[Y/N]?
if /I "%c%" EQU "Y" goto:startClink
if /I "%c%" EQU "N" goto:cleanup
goto :clinkChoice

:startClink
echo Injecting clink...
%clinkPath%\clink_x64.exe inject

:cleanup
echo Ready to go!

