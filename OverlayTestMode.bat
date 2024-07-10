@echo off
:: termed, benchmarking
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM" /v "OverlayTestMode" /t REG_DWORD /d 5 /f

