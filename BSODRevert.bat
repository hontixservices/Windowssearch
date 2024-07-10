@echo off
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "LogEvent" /t REG_DWORD /d "1" /f > nul 2> nul
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "DisplayParameters" /f > nul 2> nul
