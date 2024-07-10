@echo off

REM Get the number of logical processors
for /f "tokens=*" %%a in ('wmic cpu get NumberOfLogicalProcessors ^| findstr /r "[0-9]"') do set NOLP=%%a

REM Set the number of processors using bcdedit
cmd /c "bcdedit /set {current} numproc %NOLP%" > nul

