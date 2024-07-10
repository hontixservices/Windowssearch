@echo off
powercfg -h on
DISM /Online /Set-ReservedStorageState /State:Enabled