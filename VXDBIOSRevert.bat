@echo off
REG DELETE "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /f >nul
REG DELETE "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /f >nul
REG DELETE "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /f >nul
REG DELETE "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /f >nul
