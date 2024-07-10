@echo off
powercfg /restoredefaultschemes

REM Activate the default power scheme
powercfg -setactive scheme_current