@echo off
set devEnv="h:\sjl\public\genericDevEnv.bat"
set ahkBat=".\runAHK_Loop.bat"

call %ahkBat%
start cmd.exe /k %devEnv%
