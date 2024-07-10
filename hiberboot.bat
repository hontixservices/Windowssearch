@echo off
powercfg -h off & DISM /Online /Set-ReservedStorageState /State:Disabled >nul

