@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BTHPORT\Parameters" /v "InquiryDuration" /t REG_DWORD /d "65535" /f