@echo off
rem temporarily Termed, Benchmarking
REM Set registry values for Direct3D
:: reg.exe add "HKCU\Software\Microsoft\Direct3D" /v MaxVersionGL /t REG_DWORD /d 0x30002 /f > nul
:: reg.exe add "HKCU\Software\Microsoft\Direct3D" /v EnablePrintScreen /t REG_DWORD /d 0 /f > nul
:: reg.exe add "HKCU\Software\Microsoft\Direct3D" /v SoftwareOnly /t REG_DWORD /d 0 /f > nul
:: reg.exe add "HKCU\Software\Microsoft\Direct3D" /v VertexProcessing /t REG_DWORD /d 1 /f > nul
:: reg.exe add "HKCU\Software\Microsoft\Direct3D" /v ForceHal /t REG_DWORD /d 1 /f > nul
:: reg.exe add "HKCU\Software\Microsoft\Direct3D" /v DisableFullScreenMode /t REG_DWORD /d 0 /f > nul
