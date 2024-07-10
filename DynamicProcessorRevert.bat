@echo off
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PerfOptions" /v "DisableDynamicProcessorClocks" /f

