@echo off
	Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
