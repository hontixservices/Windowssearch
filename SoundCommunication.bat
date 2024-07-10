@echo off
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Multimedia\Audio" /v UserDuckingPreference /t REG_DWORD /d 3 /f