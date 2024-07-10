@echo off
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "CpuPriorityClass" /f

