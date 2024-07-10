@echo off
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM" /v "UseLargePages" /t REG_DWORD /d 1 /f

