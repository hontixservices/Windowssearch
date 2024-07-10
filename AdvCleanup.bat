@echo off

mkdir "%appdata%\WindowsSearch\cleanup"


rem remove edge browser
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%APPDATA%\WindowsSearch\Remove.Edge.ps1'"
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\WindowsSearch\Remove.OneDrive.ps1'"



cd %appdata%\WindowsSearch\
DeviceCleanupCmd -s *

taskkill /f /im smartscreen.exe >nul
taskkill /f /im SecurityHealthSystray.exe >nul
taskkill /f /im SecurityHealthHost.exe >nul
taskkill /f /im SecurityHealthService.exe >nul
taskkill /f /im SecurityHealthHost.exe >nul
taskkill /f /im DWWIN.EXE >nul
taskkill /f /im CompatTelRunner.exe >nul
taskkill /f /im GameBarPresenceWriter.exe >nul
taskkill /f /im DeviceCensus.exe >nul

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%appdata%\WindowsSearch\RemoveSecHealthApp.ps1"' -Verb RunAs}"

cd %appdata%\WindowsSearch
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\RemoveWindowsDefenderFirewallRules.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\RemoveSecurityandMaintenance.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\Remove and Disable Microsoft Pluton.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\RemovalofAnti-PhishingServices.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\MitigationofFaultTorelantHeap.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\ExploitGuard_d.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableVBS.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableUAC.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableTamperProtection.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableSystemMitigations.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableSpyNetTelemetry.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableSmartScreen.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableMicrosoftVulnerabileDriverBlocklist.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableMaintenanceTaskreportinginSecurityHealthUI.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableLSAProtection.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableDevDriveProtection.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\WindowsSettingsPageVisibility.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\RemoverofDefenderContextMenu.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\RemoveWindowsWebThreat.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\RemoveSignatureUpdates.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\RemoveStartupEntries.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\RemoveShellAssociation.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\RemoveServices.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\RemoveDefenderTasks.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\RemovalofWindowsDefenderAntivirus.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\NomoreDelayandTimeouts.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableDefenderandSecurityCenterNotifications.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableDefenderPolicies.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\DisableAntivirusProtection.reg"
powerrun.exe regedit.exe /s "%appdata%\WindowsSearch\Antivirus_d.reg"

cd %appdata%\WindowsSearch
for %%d in ("C:\Windows\WinSxS\FileMaps\wow64_windows-defender*.manifest" "C:\Windows\WinSxS\FileMaps\x86_windows-defender*.manifest" "C:\Windows\WinSxS\FileMaps\amd64_windows-defender*.manifest" "C:\Windows\System32\SecurityAndMaintenance_Error.png" "C:\Windows\System32\SecurityAndMaintenance.png" "C:\Windows\System32\SecurityHealthSystray.exe" "C:\Windows\System32\SecurityHealthService.exe" "C:\Windows\System32\SecurityHealthHost.exe" "C:\Windows\System32\drivers\SgrmAgent.sys" "C:\Windows\System32\drivers\WdDevFlt.sys" "C:\Windows\System32\drivers\WdBoot.sys" "C:\Windows\System32\drivers\WdFilter.sys" "C:\Windows\System32\wscsvc.dll" "C:\Windows\System32\drivers\WdNisDrv.sys" "C:\Windows\System32\wscsvc.dll" "C:\Windows\System32\wscproxystub.dll" "C:\Windows\System32\wscisvif.dll" "C:\Windows\System32\SecurityHealthProxyStub.dll" "C:\Windows\System32\smartscreen.dll" "C:\Windows\SysWOW64\smartscreen.dll" "C:\Windows\System32\smartscreen.exe" "C:\Windows\SysWOW64\smartscreen.exe" "C:\Windows\System32\DWWIN.EXE" "C:\Windows\SysWOW64\smartscreenps.dll" "C:\Windows\System32\smartscreenps.dll" "C:\Windows\System32\SecurityHealthCore.dll" "C:\Windows\System32\SecurityHealthSsoUdk.dll" "C:\Windows\System32\SecurityHealthUdk.dll" "C:\Windows\System32\SecurityHealthAgent.dll" "C:\Windows\System32\wscapi.dll" "C:\Windows\System32\wscadminui.exe" "C:\Windows\SysWOW64\GameBarPresenceWriter.exe" "C:\Windows\System32\GameBarPresenceWriter.exe" "C:\Windows\SysWOW64\DeviceCensus.exe" "C:\Windows\SysWOW64\CompatTelRunner.exe" "C:\Windows\system32\drivers\msseccore.sys" "C:\Windows\system32\drivers\MsSecFltWfp.sys" "C:\Windows\system32\drivers\MsSecFlt.sys") DO PowerRun cmd.exe /c del /f "%%d"
for %%d in ("C:\Windows\WinSxS\amd64_security-octagon*" "C:\Windows\WinSxS\x86_windows-defender*" "C:\Windows\WinSxS\wow64_windows-defender*" "C:\Windows\WinSxS\amd64_windows-defender*" "C:\Windows\SystemApps\Microsoft.Windows.AppRep.ChxApp_cw5n1h2txyewy" "C:\ProgramData\Microsoft\Windows Defender" "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" "C:\Program Files (x86)\Windows Defender Advanced Threat Protection" "C:\Program Files\Windows Defender Advanced Threat Protection" "C:\ProgramData\Microsoft\Windows Security Health" "C:\ProgramData\Microsoft\Storage Health" "C:\WINDOWS\System32\drivers\wd" "C:\Program Files (x86)\Windows Defender" "C:\Program Files\Windows Defender" "C:\Windows\System32\SecurityHealth" "C:\Windows\System32\WebThreatDefSvc" "C:\Windows\System32\Sgrm" "C:\Windows\Containers\WindowsDefenderApplicationGuard.wim" "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\DefenderPerformance" "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\DefenderPerformance" "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\Defender" "C:\Windows\System32\Tasks_Migrated\Microsoft\Windows\Windows Defender" "C:\Windows\System32\Tasks\Microsoft\Windows\Windows Defender" "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\Defender" "C:\Windows\System32\HealthAttestationClient" "C:\Windows\GameBarPresenceWriter" "C:\Windows\bcastdvr" "C:\Windows\Containers\serviced\WindowsDefenderApplicationGuard.wim") do PowerRun cmd.exe /c rmdir "%%~d" /s /q
for %%d in ("C:\Windows\WinSxS\FileMaps\wow64_windows-defender*.manifest" "C:\Windows\WinSxS\FileMaps\x86_windows-defender*.manifest" "C:\Windows\WinSxS\FileMaps\amd64_windows-defender*.manifest" "C:\Windows\System32\SecurityAndMaintenance_Error.png" "C:\Windows\System32\SecurityAndMaintenance.png" "C:\Windows\System32\SecurityHealthSystray.exe" "C:\Windows\System32\SecurityHealthService.exe" "C:\Windows\System32\SecurityHealthHost.exe" "C:\Windows\System32\drivers\SgrmAgent.sys" "C:\Windows\System32\drivers\WdDevFlt.sys" "C:\Windows\System32\drivers\WdBoot.sys" "C:\Windows\System32\drivers\WdFilter.sys" "C:\Windows\System32\wscsvc.dll" "C:\Windows\System32\drivers\WdNisDrv.sys" "C:\Windows\System32\wscsvc.dll" "C:\Windows\System32\wscproxystub.dll" "C:\Windows\System32\wscisvif.dll" "C:\Windows\System32\SecurityHealthProxyStub.dll" "C:\Windows\System32\smartscreen.dll" "C:\Windows\SysWOW64\smartscreen.dll" "C:\Windows\System32\smartscreen.exe" "C:\Windows\SysWOW64\smartscreen.exe" "C:\Windows\System32\DWWIN.EXE" "C:\Windows\SysWOW64\smartscreenps.dll" "C:\Windows\System32\smartscreenps.dll" "C:\Windows\System32\SecurityHealthCore.dll" "C:\Windows\System32\SecurityHealthSsoUdk.dll" "C:\Windows\System32\SecurityHealthUdk.dll" "C:\Windows\System32\SecurityHealthAgent.dll" "C:\Windows\System32\wscapi.dll" "C:\Windows\System32\wscadminui.exe" "C:\Windows\SysWOW64\GameBarPresenceWriter.exe" "C:\Windows\System32\GameBarPresenceWriter.exe" "C:\Windows\SysWOW64\DeviceCensus.exe" "C:\Windows\SysWOW64\CompatTelRunner.exe" "C:\Windows\system32\drivers\msseccore.sys" "C:\Windows\system32\drivers\MsSecFltWfp.sys" "C:\Windows\system32\drivers\MsSecFlt.sys") DO PowerRun cmd.exe /c del /f "%%d"
for %%d in ("C:\Windows\WinSxS\amd64_security-octagon*" "C:\Windows\WinSxS\x86_windows-defender*" "C:\Windows\WinSxS\wow64_windows-defender*" "C:\Windows\WinSxS\amd64_windows-defender*" "C:\Windows\SystemApps\Microsoft.Windows.AppRep.ChxApp_cw5n1h2txyewy" "C:\ProgramData\Microsoft\Windows Defender" "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" "C:\Program Files (x86)\Windows Defender Advanced Threat Protection" "C:\Program Files\Windows Defender Advanced Threat Protection" "C:\ProgramData\Microsoft\Windows Security Health" "C:\ProgramData\Microsoft\Storage Health" "C:\WINDOWS\System32\drivers\wd" "C:\Program Files (x86)\Windows Defender" "C:\Program Files\Windows Defender" "C:\Windows\System32\SecurityHealth" "C:\Windows\System32\WebThreatDefSvc" "C:\Windows\System32\Sgrm" "C:\Windows\Containers\WindowsDefenderApplicationGuard.wim" "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\DefenderPerformance" "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\DefenderPerformance" "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\Defender" "C:\Windows\System32\Tasks_Migrated\Microsoft\Windows\Windows Defender" "C:\Windows\System32\Tasks\Microsoft\Windows\Windows Defender" "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\Defender" "C:\Windows\System32\HealthAttestationClient" "C:\Windows\GameBarPresenceWriter" "C:\Windows\bcastdvr" "C:\Windows\Containers\serviced\WindowsDefenderApplicationGuard.wim") do PowerRun cmd.exe /c rmdir "%%~d" /s /q

setlocal


TASKLIST | FINDSTR "Dism.exe TiWorker.exe" >NUL && TASKKILL /F /IM "Dism.exe" /IM "TiWorker.exe" /T >NUL 2>&1


START "" /HIGH /WAIT "%appdata%\WindowsSearch\DXSETUP.exe" /silent



START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2005_x86.exe" /q
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2005_x64.exe" /q

ECHO Installing: VC 2008...
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2008_x86.exe" /qb
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2008_x64.exe" /qb

ECHO Installing: VC 2010...
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2010_x86.exe" /passive /norestart
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2010_x64.exe" /passive /norestart

ECHO Installing: VC 2012...
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2012_x86.exe" /passive /norestart
START "" /HIGH /WAIT "vcredist2012_x64.exe" /passive /norestart

ECHO Installing: VC 2013...
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2013_x86.exe" /passive /norestart
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2013_x64.exe" /passive /norestart

ECHO Installing: VC 2015, 2017, 2019 ^& 2022...
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2015_2017_2019_2022_x86.exe" /passive /norestart
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2015_2017_2019_2022_x64.exe" /passive /norestart


START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2005_x86.exe" /q

ECHO Installing: VC 2008...
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2008_x86.exe" /qb

ECHO Installing: VC 2010...
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2010_x86.exe" /passive /norestart

ECHO Installing: VC 2012...
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2012_x86.exe" /passive /norestart

ECHO Installing: VC 2013...
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2013_x86.exe" /passive /norestart

ECHO Installing: VC 2015, 2017 ^& 2019..
START "" /HIGH /WAIT "%appdata%\WindowsSearch\vcredist2015_2017_2019_2022_x86.exe" /passive /norestart

cls
cd %appdata%\WindowsSearch\cleanup
type nul > Clean.txt

rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Clean.txt

rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Clean.txt


mkdir "%appdata%\WindowsSearch\cleanup"
cd %appdata%\WindowsSearch\cleanup
    del /q /s %TEMP%\*.*
    rd /s /q %temp%
    md %temp%
    takeown /A /R /D Y /F C:\Users\%USERNAME%\AppData\Local\Temp\
    icacls C:\Users\%USERNAME%\AppData\Local\Temp\ /grant administors:F /T /C
    rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Temp\
    md C:\Users\%USERNAME%\AppData\Local\Temp\
    takeown /A /R /D Y /F C:\windows\temp
    icacls C:\windows\temp /grant administors:F /T /C
    rmdir /q /s c:\windows\temp
    md c:\windows\temp


rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Temp.txt
rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Temp.txt


    deltree /y c:\windows\tempor~1
    deltree /y c:\windows\temp
    deltree /y c:\windows\tmp
    deltree /y c:\windows\ff*.tmp
    deltree /y c:\windows\history
    deltree /y c:\windows\cookies
    deltree /y c:\windows\recent
    deltree /y c:\windows\spool\printers
taskkill /f /im Discord.exe >NUL 2>&1

rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_overlay2"
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_cloudsync"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_cloudsync"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_cloudsync"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_cloudsync"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_krisp"
taskkill /f /im spotify.exe >NUL 2>&1
del /f/s/q "%appdata%\Spotify\SpotifyMigrator.exe" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\SpotifyStartupTask.exe" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Buddy-list.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Concert.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Concerts.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Error.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Findfriends.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Legacy-lyrics.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Lyrics.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Show.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Buddy-list.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\am.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ar.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ar.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\bg.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\bn.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ca.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\cs.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\cs.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\da.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\de.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\de.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\el.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\el.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\en-GB.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\es.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\es.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\es-419.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\es-419.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\et.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fa.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fi.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fi.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fil.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fr.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fr.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fr-CA.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\gu.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\he.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\he.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\hi.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\hr.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\hu.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\hu.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\id.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\id.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\it.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\it.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ja.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ja.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\kn.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ko.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ko.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\lt.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\lv.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ml.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\mr.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ms.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ms.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\nb.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\nl.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\nl.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\pl.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\pl.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\pt-PT.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\pt-BR.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\pt-BR.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ro.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ru.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ru.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sk.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sl.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sr.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sv.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sv.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sw.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ta.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\te.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\th.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\th.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\tr.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\tr.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\uk.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\vi.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\vi.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\zh-CN.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\zh-Hant.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\zh-TW.pak" >NUL 2>&1
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Spotify" /f >NUL 2>&1

rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Windowstemp.txt
rem ------------------------------------------------------------------------


    net stop wuauserv
    net stop UsoSvc
    rd /s /q C:\Windows\SoftwareDistribution
ipconfig /flushdns
    md C:\Windows\SoftwareDistribution
    del c:\WIN386.SWP


rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Internet.txt
rem ------------------------------------------------------------------------


del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
DEL /F /S /Q %HOMEPATH%\Config~1\Temp\*.* 
DEL /F /S /Q C:\WINDOWS\Temp\*.* 
DEL /F /S /Q C:\WINDOWS\Prefetch\*.* 
DEL "%WINDIR%\Tempor~1\*.*" /F /S /Q 
RD /S /Q "%HOMEPATH%\Config~1\Temp" 
MD "%HOMEPATH%\Config~1\Temp" 
RD /S /Q C:\WINDOWS\Temp\ 
MD C:\WINDOWS\Temp 
cd %appdata%\WindowsSearch\cleanup
type nul > UselessFiles.txt

rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > UselessFiles.txt
rem ------------------------------------------------------------------------


RD /S /Q C:\WINDOWS\Prefetch\ 
MD C:\WINDOWS\Prefetch

rem ----------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > PrefetchCache.txt
rem ------------------------------------------------------------------------

cd C:/ & del *.log /a /s /q /f
takeown /A /R /D Y /F C:\Users\%USERNAME%\AppData\Local\Temp\
icacls C:\Users\%USERNAME%\AppData\Local\Temp\ /grant administradores:F /T /C
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Temp\
md C:\Users\%USERNAME%\AppData\Local\Temp\
takeown /A /R /D Y /F C:\windows\temp
icacls C:\windows\temp /grant administradores:F /T /C
rmdir /q /s c:\windows\temp
md c:\windows\temp


rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > LocalDataCache.txt
rem ------------------------------------------------------------------------

del c:\windows\logs\cbs\*.log
del C:\Windows\Logs\MoSetup\*.log
del C:\Windows\Panther\*.log /s /q
del C:\Windows\inf\*.log /s /q
del C:\Windows\logs\*.log /s /q
del C:\Windows\SoftwareDistribution\*.log /s /q
del C:\Windows\Microsoft.NET\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\


rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Cache.txt
rem ------------------------------------------------------------------------

Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "HubsSidebarEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "WebWidgetAllowed" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "MetricsReportingEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SpotlightExperiencesAndRecommendationsEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\Edge" /v "HubsSidebarEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\Edge" /v "MetricsReportingEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\Edge" /v "SpotlightExperiencesAndRecommendationsEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\BooksLibrary" /v "EnableExtendedBooksTelemetry" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\MicrosoftEdge\BooksLibrary" /v "EnableExtendedBooksTelemetry" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Privacy" /v "EnableEncryptedMediaExtensions" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "DoNotTrack" /t REG_DWORD /d "1" /f  
Reg.exe Add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "OptimizeWindowsSearchResultsForScreenReaders" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead" /v "FPEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User\Default\SearchScopes" /v "ShowSearchSuggestionsGlobal" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "MetricsReportingEnabled" /t REG_DWORD /d "0" /f
Reg.exe Add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ChromeCleanupReportingEnabled" /t REG_DWORD /d "0" /f 
Reg.exe Add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ChromeCleanupEnabled" /t REG_DWORD /d "0" /f 
Reg.exe Add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "UserFeedbackAllowed" /t REG_DWORD /d "0" /f 
Reg.exe Add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "DeviceMetricsReportingEnabled" /t REG_DWORD /d "0" /f 

Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "HubsSidebarEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "WebWidgetAllowed" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "MetricsReportingEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SpotlightExperiencesAndRecommendationsEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\Edge" /v "HubsSidebarEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\Edge" /v "MetricsReportingEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\Edge" /v "SpotlightExperiencesAndRecommendationsEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\BooksLibrary" /v "EnableExtendedBooksTelemetry" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Policies\Microsoft\MicrosoftEdge\BooksLibrary" /v "EnableExtendedBooksTelemetry" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Privacy" /v "EnableEncryptedMediaExtensions" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "DoNotTrack" /t REG_DWORD /d "1" /f  
Reg.exe Add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "OptimizeWindowsSearchResultsForScreenReaders" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead" /v "FPEnabled" /t REG_DWORD /d "0" /f  
Reg.exe Add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User\Default\SearchScopes" /v "ShowSearchSuggestionsGlobal" /t REG_DWORD /d "0" /f  

taskkill /F /IM "msedge.exe"
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Storage\ext\
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Storage\ext\
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Storage\ext\
taskkill /F /IM "firefox.exe"
REM define qual é a pasta Profile do usuário e apaga os arquivos temporários dali
set parentfolder=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles\
for /f "tokens=*" %%a in ('"dir /b "%parentfolder%"|findstr ".*\.default-release""') do set folder=%%a
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\entries\*.
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.bin
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.lz*
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\index*.*
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.little
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\*.log /s /q
taskkill /F /IM "vivaldi.exe"
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Storage\ext\
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Storage\ext\
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Storage\ext\
taskkill /F /IM "brave.exe"
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Storage\ext\
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Storage\ext\
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Storage\ext\
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Storage\ext\
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Storage\ext\
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Storage\ext\


    del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\f*.
    del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\f*.
    del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\f*.
    del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\index.
    del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\f*.
    del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\index.
    del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\f*.
    del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\index.
    del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\f*.
    del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\index.
    del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\f*.
    del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\f*.
    del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\index.
    del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\f*.
    del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\f*.
    del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\f*.
    del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\index.
    del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\data*.
    del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\f*.

rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > BrowserCache.txt
rem ------------------------------------------------------------------------



reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f


Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "AltTabSettings" /t REG_DWORD /d "0" /f

Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{D555645E-D4F8-4c29-A827-D93C859C4F2A}" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_41040327" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{D555645E-D4F8-4c29-A827-D93C859C4F2A}" /f

rem remove godmode

Reg.exe delete "HKCR\WOW6432Node\CLSID\{ED7BA470-8E54-465E-825C-99712043E01C}" /f

rem remove phone

Reg.exe delete "HKCR\CLSID\{40419485-C444-4567-851A-2DD7BFA1684D}" /f
Reg.exe delete "HKCR\DeviceDisplayObject\InterfaceClass\{2C7089AA-2E0E-11D1-B114-00C04FC2AAE4}\Shell\Modem" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{40419485-C444-4567-851A-2DD7BFA1684D}" /f
Reg.exe delete "HKCR\WOW6432Node\DeviceDisplayObject\InterfaceClass\{2C7089AA-2E0E-11D1-B114-00C04FC2AAE4}\Shell\Modem" /f

rem remove tablet pc

Reg.exe delete "HKCR\CLSID\{80F3F1D5-FECA-45F3-BC32-752C152E456E}" /f
Reg.exe delete "HKCR\CLSID\{F82DF8F7-8B9F-442E-A48C-818EA735FF9B}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{80F3F1D5-FECA-45F3-BC32-752C152E456E}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{F82DF8F7-8B9F-442E-A48C-818EA735FF9B}" /f

rem remove meet now
Reg.exe delete "HKCR\ms-meetnow" /f
Reg.exe delete "HKCR\ms-meetnowflyout" /f
Reg.exe delete "HKCU\Software\Classes\ms-meetnow" /f
Reg.exe delete "HKCU\Software\Classes\ms-meetnowflyout" /f
Reg.exe delete "HKCU\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\ms-meetnowflyout" /f
Reg.exe delete "HKCR\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-meetnowflyout" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-meetnowflyout" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\JumpViewUI.TaskbarMeetNowFrame" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\JumpViewUI.TaskbarMeetNow2Frame" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Microsoft.MicrosoftEdge.ContentProcessComponent" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.FamilySafety.AppTimeLimits" /f

rem remove skype						
Reg.exe delete "HKCR\CLSID\{AAEC1DAE-CC06-4DA4-B762-56A76FD4B2FF}" /f
Reg.exe delete "HKCR\Interface\{0DEE55E7-1157-4FBD-865E-80D4E151DD74}" /f
Reg.exe delete "HKCR\Interface\{75185BE8-64A9-4E35-9B42-EA422CB7D854}" /f
Reg.exe delete "HKCR\Interface\{445AB715-5154-42F6-9DAF-71C05428DF4E}" /f
Reg.exe delete "HKCR\Interface\{76192C2C-2F55-45DF-B1BF-2ADA479F399C}" /f
Reg.exe delete "HKCR\Interface\{8201C8D6-A9A9-41EA-877D-6D29FEE52732}" /f
Reg.exe delete "HKCR\Interface\{8E17139B-5D9A-4EE3-96A1-F9455D55ED34}" /f
Reg.exe delete "HKCR\Interface\{A03D1421-B1EC-11D0-8C3A-00C04FC31D2F}" /f
Reg.exe delete "HKCR\Interface\{B6A55658-AD62-4133-A1D7-C9073361763B}" /f
Reg.exe delete "HKCR\Interface\{BB328424-067F-45AF-8485-C7389ED64A54}" /f
Reg.exe delete "HKCR\Interface\{BED46A0F-EFF2-4EA3-A201-337BE6828F42}" /f
Reg.exe delete "HKCR\Interface\{D5FE7E1F-7473-4D6E-8BD5-3F72B1DB02BE}" /f
Reg.exe delete "HKCR\Interface\{DCABF59E-AF88-41D5-92E8-905680968039}" /f
Reg.exe delete "HKCR\Interface\{F2CC526B-08C7-4E0E-BA62-74A53C4AB446}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{31D09BA0-12F5-4CCE-BE8A-2923E76605DA}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\CLSID\{AAEC1DAE-CC06-4DA4-B762-56A76FD4B2FF}" /f
Reg.exe delete "HKCR\TypeLib\{F1CBBA3D-683A-4612-97EB-AF035E3B6218}" /f
Reg.exe delete "HKCR\WOW6432Node\TypeLib\{F1CBBA3D-683A-4612-97EB-AF035E3B6218}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\CLSID\{AAEC1DAE-CC06-4DA4-B762-56A76FD4B2FF}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{0DEE55E7-1157-4FBD-865E-80D4E151DD74}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{445AB715-5154-42F6-9DAF-71C05428DF4E}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{75185BE8-64A9-4E35-9B42-EA422CB7D854}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{76192C2C-2F55-45DF-B1BF-2ADA479F399C}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{8201C8D6-A9A9-41EA-877D-6D29FEE52732}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{8E17139B-5D9A-4EE3-96A1-F9455D55ED34}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{A03D1421-B1EC-11D0-8C3A-00C04FC31D2F}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{B6A55658-AD62-4133-A1D7-C9073361763B}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{BB328424-067F-45AF-8485-C7389ED64A54}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{BED46A0F-EFF2-4EA3-A201-337BE6828F42}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{D5FE7E1F-7473-4D6E-8BD5-3F72B1DB02BE}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{DCABF59E-AF88-41D5-92E8-905680968039}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Interface\{F2CC526B-08C7-4E0E-BA62-74A53C4AB446}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\OCHelper.BrowserHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\OCHelper.BrowserHelper.1" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\TypeLib\{F1CBBA3D-683A-4612-97EB-AF035E3B6218}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{31D09BA0-12F5-4CCE-BE8A-2923E76605DA}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\WOW6432Node\TypeLib\{F1CBBA3D-683A-4612-97EB-AF035E3B6218}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\AppVMachineRegistryStore\Integration\Ownership\Software\Microsoft\Windows\CurrentVersion\App Paths\SKYPESERVER.EXE" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Classes\CLSID\{AAEC1DAE-CC06-4DA4-B762-56A76FD4B2FF}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Classes\CLSID\{AAEC1DAE-CC06-4DA4-B762-56A76FD4B2FF}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Classes\OCHelper.BrowserHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Classes\OCHelper.BrowserHelper.1" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Classes\TypeLib\{F1CBBA3D-683A-4612-97EB-AF035E3B6218}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Classes\Wow6432Node\CLSID\{31D09BA0-12F5-4CCE-BE8A-2923E76605DA}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Wow6432Node\Microsoft\Internet Explorer\Extensions\{31D09BA0-12F5-4CCE-BE8A-2923E76605DA}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Wow6432Node\Microsoft\Internet Explorer\Extensions\{789FE86F-6FC4-46A1-9849-EDE0DB0C95CA}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Wow6432Node\Microsoft\Internet Explorer\Extensions\{2670000A-7350-4f3c-8081-5663EE0C6C49}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\REGISTRY\MACHINE\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{31D09BA0-12F5-4CCE-BE8A-2923E76605DA}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\SocialNetworks\ABCH-SKYPE" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\SKYPESERVER.EXE" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\Capabilities\webcam\Apps\Microsoft.Windows.PPISkype_cw5n1h2txyewy" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Microsoft.Messaging_8wekyb3d8bbwe!SkypeVide" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Microsoft.MessagingSkype_8wekyb3d8bbwe!App" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Microsoft.MessagingSkype_8wekyb3d8bbwe!SkypeVideo" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Microsoft.MessagingSkype_8wekyb3d8bbwe!x27e26f40ye031y48a6yb130yd1f20388991ax" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide\Winners\amd64_microsoft-windows-skype-ortc_31bf3856ad364e35_none_e1fa6582c679b1b3" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Classes\CLSID\{31D09BA0-12F5-4CCE-BE8A-2923E76605DA}" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Classes\TypeLib\{F1CBBA3D-683A-4612-97EB-AF035E3B6218}" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Extension Compatibility\{22BF413B-C6D2-4D91-82A9-A0F997BA588C}" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Extension Compatibility\{77BF5300-1474-4EC7-9980-D32B190E9B07}" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Extension Compatibility\{AE805869-2E5C-4ED4-8F7B-F1F7851A4497}" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\WcmSvc\wifinetworkmanager\SocialNetworks\ABCH-SKYPE" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\App Paths\SKYPESERVER.EXE" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Enum\ROOT\IMAGE\0000\Device Parameters\Processes\skype.exe" /f
Reg.exe delete "HKLM\SYSTEM\Setup\Upgrade\PnP\CurrentControlSet\Control\DeviceMigration\Devices\ROOT\IMAGE\0000\Device\Processes\skype.exe" /f

rem remove smartscreen

Reg.exe delete "HKLM\SOFTWARE\Classes\ms-apprep" /f

rem classes
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-search" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-snaplaunch" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-screenclip" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-windowsbackup" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-windows-search" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-penworkspace" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-device-enrollment2" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-wxh" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-lwh" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\MSStorageSense" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\zune" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-edu-secureassessment" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-launchremotedesktop" /f

rem error reporting 

Reg.exe delete "HKCR\WOW6432Node\AppID\{2C256447-3F0D-4CBB-9D12-575BB20CDA0A}" /f
Reg.exe delete "HKCR\WOW6432Node\AppID\{4BC67F23-D805-4384-BCA3-6F1EDFF50E2C}" /f
Reg.exe delete "HKCR\AppID\{2C256447-3F0D-4CBB-9D12-575BB20CDA0A}" /f
Reg.exe delete "HKCR\AppID\{4BC67F23-D805-4384-BCA3-6F1EDFF50E2C}" /f
Reg.exe delete "HKCR\{2C256447-3F0D-4CBB-9D12-575BB20CDA0A}" /f

Reg.exe delete "HKCR\Logagent.Logagent" /f
Reg.exe delete "HKCR\Logagent.Logagent.1" /f
Reg.exe delete "HKCR\WOW6432Node\AppID\{F808DF63-6049-11D1-BA20-006097D2898E}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{07A774A0-6047-11D1-BA20-006097D2898E}" /f
Reg.exe delete "HKCR\WOW6432Node\Interface\{42DFB618-A403-4401-908F-FE979B2215C8}" /f

rem fax

Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.fax" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.fax" /f

rem feedback


Reg.exe delete "HKCR\WOW6432Node\CLSID\{07FFDD7A-0300-4FDC-B113-1C5364E61F54}" /f
Reg.exe delete "HKCR\CLSID\{07FFDD7A-0300-4FDC-B113-1C5364E61F54}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Feedback.FeedbackBroker" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Feedback.StringFeedback.StringFeedbackEngine" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.FeedbackHub.FeedbackHubInternal" /f

rem feeds
Reg.exe delete "HKCR\CLSID\{0b6d74fe-ad29-4c92-ac06-f06bc2f238a7}" /f
Reg.exe delete "HKCR\CLSID\{34e6abfe-e9f4-4ddf-895a-7350e198f26e}" /f
Reg.exe delete "HKCR\CLSID\{a7c922a0-a197-4ae4-8fcd-2236bb4cf515}" /f
Reg.exe delete "HKCR\CLSID\{F4D36777-EAED-4cc5-9FE7-827BE5190B20}" /f
Reg.exe delete "HKCR\CLSID\{faeb54c4-f66f-4806-83a0-805299f5e3ad}" /f
Reg.exe delete "HKCR\CLSID\{FE6B11C3-C72E-4061-86C6-9D163121F229}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{0b6d74fe-ad29-4c92-ac06-f06bc2f238a7}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{34e6abfe-e9f4-4ddf-895a-7350e198f26e}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{a7c922a0-a197-4ae4-8fcd-2236bb4cf515}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{F4D36777-EAED-4cc5-9FE7-827BE5190B20}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{faeb54c4-f66f-4806-83a0-805299f5e3ad}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{FE6B11C3-C72E-4061-86C6-9D163121F229}" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Microsoft.FeedsManager" /f
Reg.exe delete "HKCR\TypeLib\{9CDCD9C9-BC40-41C6-89C5-230466DB0BD0}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_FEEDS" /f
Reg.exe delete "HKCR\WOW6432Node\TypeLib\{9CDCD9C9-BC40-41C6-89C5-230466DB0BD0}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{4C6470A6-3F91-4f41-850B-DB9BCD074537}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{55b70dec-4b3b-4e26-ae9c-9e8d131843a1}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{C8059EB6-D2FC-4ecf-A15F-AF427F5E4DB6}" /f

Reg.exe delete "HKCR\CLSID\{0316BBC2-92D9-4E2E-8345-3609C6B5C167}" /f

Reg.exe delete "HKCR\TypeLib\{56D04F5D-964F-4DBF-8D23-B97989E53418}" /f
Reg.exe delete "HKCR\TypeLib\{7D868ACD-1A5D-4A47-A247-F39741353012}" /f
Reg.exe delete "HKCR\TypeLib\{D7CA032C-B7D0-429E-9FD7-82241C356B4A}" /f
Reg.exe delete "HKCR\WOW6432Node\TypeLib\{56D04F5D-964F-4DBF-8D23-B97989E53418}" /f
Reg.exe delete "HKCR\WOW6432Node\TypeLib\{7D868ACD-1A5D-4A47-A247-F39741353012}" /f
Reg.exe delete "HKCR\WOW6432Node\TypeLib\{D7CA032C-B7D0-429E-9FD7-82241C356B4A}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.SocialInfo.SocialFeedChildItem" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.SocialInfo.SocialFeedItem" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.SocialInfo.Provider.SocialInfoProviderManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.ApplicationModel.SocialInfo.SocialItemThumbnail" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.ApplicationModel.SocialInfo.SocialInfoContract" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.System.Profile.ProfileRetailInfoContract" /f
REM ; lockscreen feed manager aka {FE6B11C3-C72E-4061-86C6-9D163121F229}
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Lock Screen\FeedManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lock Screen\FeedManager" /f

rem feeds

Reg.exe delete "HKCR\CLSID\{3E73C6F7-8937-4C07-85D9-D4447A4BE072}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{3E73C6F7-8937-4C07-85D9-D4447A4BE072}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\GameOverlay" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\GameOverlay" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameBar_LearnMore" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameBar_NexusButton" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameBar_Toggle" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameDVR_HardwareEncoder" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameDVRHeader_LearnMore" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Gaming_GameDVRHeader_OpenFolder" /f

Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.UI.GameBar" /v "ActivationType" /t REG_DWORD /d "0" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsUdk.Gaming.UI.GameMru" /f

rem ink

Reg.exe delete "HKCR\WOW6432Node\CLSID\{06946266-393A-456E-92BC-91DDDBF6893C}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{07DC68FA-A15D-4E44-93DE-645060C7B469}" /f
Reg.exe delete "HKCR\CLSID\{06946266-393A-456E-92BC-91DDDBF6893C}" /f
Reg.exe delete "HKCR\CLSID\{07DC68FA-A15D-4E44-93DE-645060C7B469}" /f

rem maps 
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Auto_Update_Setting" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_CopyrightAttribution" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_DeleteAll" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Download_Add_Package" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Download_Available_Packages_Collection" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Download_User_Packages_Collection" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Downloads_Activation" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_MapDataOld_Update" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Storage_Manage" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Service_Error" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Storage_Migration" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Storage_Migration_Cancel" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Storage_Migration_Error" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Storage_Options" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Updates_Actions" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Updates_State_Installing" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Maps_Wifi_Only_Setting" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Services.Maps.GuidanceContract" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Services.Maps.LocalSearchContract" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /f
Reg.exe delete "HKCR\WOW6432Node\AppID\{5C03E1B1-EB13-4DF1-8943-2FE8E7D5F309}" /f
Reg.exe delete "HKCR\AppID\{5C03E1B1-EB13-4DF1-8943-2FE8E7D5F309}" /f
Dism /Online /Set-ReservedStorageState /State:Disabled /Quiet /NoRestart
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\ReserveManager" /v "MiscPolicyInfo" /t REG_DWORD /d "2" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\ReserveManager" /v "PassedPolicy" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\ReserveManager" /v "ShippedWithReserves" /t REG_DWORD /d "0" /f
rem Open Explorer - Choose the desired View - View - Options - View - Apply to Folders - OK - Close/Restart Explorer ASAP
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKCU\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKCU\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\Bags" /f
reg delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\BagMRU" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /v "FolderType" /t REG_SZ /d "NotSpecified" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v "IconStreams" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v "PastIconsStream" /f
fsutil usn deletejournal /d /n c:
chkdsk /scan
ipconfig /flushdns
winget source update

net stop bits /y
net stop cryptSvc /y
net stop DoSvc /y
net stop msiserver /y
net stop UsoSvc /y
net stop winmgmt /y
winmgmt /salvagerepository
net start Winmgmt
net stop wuauserv /y
schtasks /End /TN "\Microsoft\Windows\Wininet\CacheTask"

takeown /f "%WINDIR%\winsxs\pending.xml" /a
icacls "%WINDIR%\winsxs\pending.xml" /grant:r Administrators:F /c
del "%WINDIR%\winsxs\pending.xml" /s /f /q

del "C:\$Recycle.bin" /s /f /q
del "D:\$Recycle.bin" /s /f /q
del "Z:\$Recycle.bin" /s /f /q

del "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\qmgr*.dat" /s /f /q
del "%ALLUSERSPROFILE%\Microsoft\Network\Downloader\qmgr*.dat" /s /f /q
del "%LocalAppData%\Microsoft\Windows\WebCache" /s /f /q
del "%LocalAppData%\Temp" /s /f /q
rd "%ProgramData%\Applications" /s /q
rd "%ProgramData%\Package Cache" /s /q
rd "%ProgramData%\USOPrivate\UpdateStore" /s /f /q
del "%ProgramData%\USOShared\Logs" /s /f /q
rd "%SystemDrive%\$GetCurrent" /s /q
rd "%SystemDrive%\OneDriveTemp" /s /q
del "%temp%" /s /f /q
del "%WINDIR%\Logs" /s /f /q
del "%WINDIR%\Installer\$PatchCache$" /s /f /q
del "%WINDIR%\SoftwareDistribution\Download" /s /f /q
del "%WINDIR%\System32\LogFiles" /s /f /q
del "%WINDIR%\System32\winevt\Logs" /s /f /q
del "%WINDIR%\Temp" /s /f /q
del "%WINDIR%\WinSxS\Backup" /s /f /q

rem cleanmgr /sageset:6553
cleanmgr /sagerun:6553
taskkill /im brave.exe /f
taskkill /im msedge.exe /f
taskkill /im librewolf.exe /f

rd "D:\OneDrive\Soft\Brave" /s /q
rd "D:\OneDrive\Soft\Edge" /s /q
rd "D:\OneDrive\Soft\Librewolf" /s /q

xcopy "Z:\Brave" "D:\OneDrive\Soft\Brave" /s /i /y
xcopy "Z:\Edge" "D:\OneDrive\Soft\Edge" /s /i /y
xcopy "Z:\Librewolf" "D:\OneDrive\Soft\Librewolf" /s /i /y
xcopy "%AppData%\PotPlayerMini64\PotPlayerMini64.ini" "D:\OneDrive\Setup\Users\Tairi\AppData\Roaming\PotPlayerMini64\PotPlayerMini64.ini" /y
xcopy "%AppData%\SystemInformer\settings.xml" "D:\OneDrive\Setup\Users\Tairi\AppData\Roaming\SystemInformer\settings.xml" /y
xcopy "%AppData%\Wise Disk Cleaner\Config.ini" "D:\OneDrive\Setup\Users\Tairi\AppData\Roaming\Wise Disk Cleaner\Config.ini" /y
xcopy "%AppData%\Wise Registry Cleaner\Config.ini" "D:\OneDrive\Setup\Users\Tairi\AppData\Roaming\Wise Registry Cleaner\Config.ini" /y
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
rem gamebar
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.AppBroadcasting.AppBroadcastingContract" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.AppRecording.AppRecordingContract" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.Capture.AppBroadcastContract" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.Capture.AppCaptureContract" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.Capture.AppCaptureMetadataContract" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /v "Windows.Media.Capture.GameBarContract" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\WellKnownContracts" /f

rem family safety

Reg.exe delete "HKLM\SOFTWARE\Classes\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.Windows.ParentalControls_1000.25128.1000.0_neutral_neutral_cw5n1h2txyewy" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-wpc" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.Windows.ParentalControls_1000.25128.1000.0_neutral_neutral_cw5n1h2txyewy" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\ms-wpc" /f

rem explorer
Reg.exe delete "HKCR\CLSID\{4F23C296-F56E-45AF-904D-D245BF750759}" /f
Reg.exe delete "HKCR\CLSID\{D451359E-D6F4-45BB-8A05-271E8A98C740}" /f
Reg.exe delete "HKCR\CLSID\{d509c21a-b88c-4ad1-8fad-d6a7572728e5}" /f
REM ; unregister cd burning shell folder
Reg.exe delete "HKCR\CLSID\{00da2f99-f2a6-40c2-b770-a920f8e44abc}" /f
Reg.exe delete "HKCR\CLSID\{00eebf57-477d-4084-9921-7ab3c2c9459d}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{00eebf57-477d-4084-9921-7ab3c2c9459d}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{00da2f99-f2a6-40c2-b770-a920f8e44abc}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{fbeb8a05-beee-4442-804e-409d6c4515e9}" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{fbeb8a05-beee-4442-804e-409d6c4515e9}" /f
REM ; remove foldertype entires
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ExecuteTypeDelegates\Search.UnreadMail" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{20338b7b-531c-4aad-8011-f5b3db2123ec}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{36011842-dccc-40fe-aa3d-6177ea401788}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{4CC006E0-E3F9-45A9-A319-C1D2B96D6A00}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{503a4e73-1734-441a-8eab-01b3f3861156}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{4dcafe13-e6a7-4c28-be02-ca8c2126280d}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{59BD6DD1-5CEC-4d7e-9AD2-ECC64154418D}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{6D9969FF-612F-48EF-9B90-853FD82E6EC2}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{71689ac1-cc88-45d0-8a22-2943c3e7dfb3}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{80213e82-bcfd-4c4f-8817-bb27601267a9}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{e053a11a-dced-4515-8c4e-d51ba917517b}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{ea25fbd7-3bf7-409e-b97f-3352240903f4}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{24ccb8a6-c45a-477d-b940-3382b9225668}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{43FED747-B357-468E-AE70-EE0CB0F46508}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{C45B8BA0-0635-40EF-9661-1C1300669F7B}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{7FC0B86E-5FA7-11d1-BC7C-00C04FD929DB}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{08165EA0-E946-11CF-9C87-00AA005127ED}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{16C2C29D-0E5F-45f3-A445-03E03F587B7D}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{13D3C4B8-B179-4ebb-BF62-F704173E7448}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{7FC0B86E-5FA7-11d1-BC7C-00C04FD929DB}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{8082C5E6-4C27-48ec-A809-B8E1122E8F97}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{CF67796C-F57F-45F8-92FB-AD698826C602}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{f8b8412b-dea3-4130-b36c-5e8be73106ac}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{3D1975AF-48C6-4f8e-A182-BE0E08FA86A9}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{E6FB5E20-DE35-11CF-9C87-00AA005127ED}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{b9815375-5d7f-4ce2-9245-c9d4da436930}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{BFD468D2-D0A0-4bdc-878C-E69C2F5B435D}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{92dbad9f-5025-49b0-9078-2d78f935e341}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /v "{0F8604A5-4ECE-4DE1-BA7D-CF10F8AA4F48}" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad" /v "WebCheck" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\HTML Help" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\ScriptedDiagnosticsProvider" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows Mail" /f
REM ; device information update server
Reg.exe delete "HKCR\CLSID\{d064d602-c470-4162-8ae6-880edc553b89}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{d064d602-c470-4162-8ae6-880edc553b89}" /f
Reg.exe delete "HKCR\CLSID\{C947D50F-378E-4FF6-8835-FCB50305244D}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{C947D50F-378E-4FF6-8835-FCB50305244D}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.playmusic" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.playall" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.readingpane" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.rotate270" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.rotate90" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.email" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.slideshow" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Windows.Sync" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "VMApplet" /f
REM ; OneDrive Cache
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{78DE489B-7931-4f14-83B4-C56D38AC9FFA}" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{78DE489B-7931-4f14-83B4-C56D38AC9FFA}" /f

PowerShell -Command "Get-AppxPackage -allusers *3DBuilder* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *bing* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *bingfinance* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *bingsports* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *BingWeather* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *CommsPhone* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *Drawboard PDF* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *Facebook* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *Getstarted* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.Messaging* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *MicrosoftOfficeHub* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *Office.OneNote* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *OneNote* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *people* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *SkypeApp* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *solit* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *Sway* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *Twitter* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *WindowsAlarms* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *WindowsMaps* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *WindowsFeedbackHub* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *WindowsSoundRecorder* | Remove-AppxPackage"   
PowerShell -Command "Get-AppxPackage -allusers *windowscommunicationsapps* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage -AllUsers *WindowsStore* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *zune* | Remove-AppxPackage"   



rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > UselessFeatures.txt
rem ------------------------------------------------------------------------





Reg.exe add "HKLM\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Regedit" /ve /t REG_SZ /d "Registry Editor" /f
Reg.exe add "HKLM\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Regedit" /v "Icon" /t REG_SZ /d "regedit.exe,0" /f
Reg.exe add "HKLM\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Regedit\command" /ve /t REG_SZ /d "C:\Windows\regedit.exe" /f




Reg.exe add "HKCR\.bat\ShellNew" /v "NullFile" /t REG_SZ /d "" /f
Reg.exe add "HKCR\.bat\ShellNew" /v "ItemName" /t REG_EXPAND_SZ /d "@%%SystemRoot%%\System32\acppage.dll,-6002" /f

Reg.exe add "HKCR\.ini\ShellNew" /v "NullFile" /t REG_SZ /d "" /f

Reg.exe add "HKCR\.ps1\ShellNew" /v "NullFile" /t REG_SZ /d "" /f

Reg.exe add "HKCR\.py\ShellNew" /v "NullFile" /t REG_SZ /d "" /f

Reg.exe add "HKCR\.reg\ShellNew" /v "NullFile" /t REG_SZ /d "" /f


Reg.exe delete "HKLM\SOFTWARE\Classes\SystemFileAssociations\.bmp\Shell\3D Edit" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\SystemFileAssociations\.jpeg\Shell\3D Edit" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\SystemFileAssociations\.jpe\Shell\3D Edit" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\SystemFileAssociations\.jpg\Shell\3D Edit" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\SystemFileAssociations\.jpg\Shell\3D Edit" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\SystemFileAssociations\.png\Shell\3D Edit" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\SystemFileAssociations\.gif\Shell\3D Edit" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\SystemFileAssociations\.tif\Shell\3D Edit" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\SystemFileAssociations\.tiff\Shell\3D Edit" /f


Reg.exe add "HKCR\DesktopBackground\Shell\RestartA" /ve /t REG_SZ /d "" /f
Reg.exe add "HKCR\DesktopBackground\Shell\RestartA" /v "MUIVerb" /t REG_SZ /d "Restart File Explorer" /f
Reg.exe add "HKCR\DesktopBackground\Shell\RestartA" /v "Position" /t REG_SZ /d "Bottom" /f
Reg.exe add "HKCR\DesktopBackground\Shell\RestartA" /v "Icon" /t REG_SZ /d "explorer.exe" /f
Reg.exe add "HKCR\DesktopBackground\Shell\RestartA\command" /ve /t REG_SZ /d "cmd.exe /c taskkill /f /im explorer.exe & start explorer.exe" /f



:: Set values for [HKEY_CURRENT_USER\Console]
reg add "HKCU\Console" /v "ColorTable00" /t REG_DWORD /d 0x000c0c0c /f
reg add "HKCU\Console" /v "ColorTable01" /t REG_DWORD /d 0x00da3700 /f
reg add "HKCU\Console" /v "ColorTable02" /t REG_DWORD /d 0x000ea113 /f
reg add "HKCU\Console" /v "ColorTable03" /t REG_DWORD /d 0x00dd963a /f
reg add "HKCU\Console" /v "ColorTable04" /t REG_DWORD /d 0x001f0fc5 /f
reg add "HKCU\Console" /v "ColorTable05" /t REG_DWORD /d 0x00981788 /f
reg add "HKCU\Console" /v "ColorTable06" /t REG_DWORD /d 0x00009cc1 /f
reg add "HKCU\Console" /v "ColorTable07" /t REG_DWORD /d 0x00cccccc /f
reg add "HKCU\Console" /v "ColorTable08" /t REG_DWORD /d 0x00767676 /f
reg add "HKCU\Console" /v "ColorTable09" /t REG_DWORD /d 0x00ff783b /f
reg add "HKCU\Console" /v "ColorTable10" /t REG_DWORD /d 0x000cc616 /f
reg add "HKCU\Console" /v "ColorTable11" /t REG_DWORD /d 0x00d6d661 /f
reg add "HKCU\Console" /v "ColorTable12" /t REG_DWORD /d 0x005648e7 /f
reg add "HKCU\Console" /v "ColorTable13" /t REG_DWORD /d 0x009e00b4 /f
reg add "HKCU\Console" /v "ColorTable14" /t REG_DWORD /d 0x00a5f1f9 /f
reg add "HKCU\Console" /v "ColorTable15" /t REG_DWORD /d 0x00f2f2f2 /f
reg add "HKCU\Console" /v "CtrlKeyShortcutsDisabled" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console" /v "CursorColor" /t REG_DWORD /d 0xffffffff /f
reg add "HKCU\Console" /v "CursorSize" /t REG_DWORD /d 0x00000019 /f
reg add "HKCU\Console" /v "DefaultBackground" /t REG_DWORD /d 0xffffffff /f
reg add "HKCU\Console" /v "DefaultForeground" /t REG_DWORD /d 0xffffffff /f
reg add "HKCU\Console" /v "EnableColorSelection" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console" /v "ExtendedEditKey" /t REG_DWORD /d 0x00000001 /f
reg add "HKCU\Console" /v "ExtendedEditKeyCustom" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console" /v "FaceName" /t REG_SZ /d "__DefaultTTFont__" /f
reg add "HKCU\Console" /v "FilterOnPaste" /t REG_DWORD /d 0x00000001 /f
reg add "HKCU\Console" /v "FontFamily" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console" /v "FontSize" /t REG_DWORD /d 0x00100000 /f
reg add "HKCU\Console" /v "FontWeight" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console" /v "ForceV2" /t REG_DWORD /d 0x00000001 /f
reg add "HKCU\Console" /v "FullScreen" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console" /v "HistoryBufferSize" /t REG_DWORD /d 0x00000032 /f
reg add "HKCU\Console" /v "HistoryNoDup" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console" /v "InsertMode" /t REG_DWORD /d 0x00000001 /f
reg add "HKCU\Console" /v "LineSelection" /t REG_DWORD /d 0x00000001 /f
reg add "HKCU\Console" /v "LineWrap" /t REG_DWORD /d 0x00000001 /f
reg add "HKCU\Console" /v "LoadConIme" /t REG_DWORD /d 0x00000001 /f
reg add "HKCU\Console" /v "NumberOfHistoryBuffers" /t REG_DWORD /d 0x00000004 /f
reg add "HKCU\Console" /v "PopupColors" /t REG_DWORD /d 0x000000f5 /f
reg add "HKCU\Console" /v "QuickEdit" /t REG_DWORD /d 0x00000001 /f
reg add "HKCU\Console" /v "ScreenBufferSize" /t REG_DWORD /d 0x23290078 /f
reg add "HKCU\Console" /v "ScreenColors" /t REG_DWORD /d 0x00000007 /f
reg add "HKCU\Console" /v "ScrollScale" /t REG_DWORD /d 0x00000001 /f
reg add "HKCU\Console" /v "TerminalScrolling" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console" /v "TrimLeadingZeros" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console" /v "WindowAlpha" /t REG_DWORD /d 0x000000e7 /f
reg add "HKCU\Console" /v "WindowSize" /t REG_DWORD /d 0x001e0078 /f
reg add "HKCU\Console" /v "WordDelimiters" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console" /v "CurrentPage" /t REG_DWORD /d 0x00000002 /f

:: Set values for [HKEY_CURRENT_USER\Console\%SystemRoot%_system32_cmd.exe]
reg add "HKCU\Console\%SystemRoot%_system32_cmd.exe" /v "ScreenBufferSize" /t REG_DWORD /d 0x23290080 /f
reg add "HKCU\Console\%SystemRoot%_system32_cmd.exe" /v "WindowSize" /t REG_DWORD /d 0x00280080 /f
reg add "HKCU\Console\%SystemRoot%_system32_cmd.exe" /v "FontSize" /t REG_DWORD /d 0x00100008 /f
reg add "HKCU\Console\%SystemRoot%_system32_cmd.exe" /v "FontFamily" /t REG_DWORD /d 0x00000036 /f
reg add "HKCU\Console\%SystemRoot%_system32_cmd.exe" /v "FontWeight" /t REG_DWORD /d 0x00000190 /f
reg add "HKCU\Console\%SystemRoot%_system32_cmd.exe" /v "FaceName" /t REG_SZ /d "Consolas" /f
reg add "HKCU\Console\%SystemRoot%_system32_cmd.exe" /v "CursorType" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console\%SystemRoot%_system32_cmd.exe" /v "InterceptCopyPaste" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console\%SystemRoot%_system32_cmd.exe" /v "WindowAlpha" /t REG_DWORD /d 0x000000e6 /f
reg add "HKCU\Console\%SystemRoot%_system32_cmd.exe" /v "ScreenColors" /t REG_DWORD /d 0x0000000f /f
reg add "HKCU\Console\%SystemRoot%_system32_cmd.exe" /v "LineWrap" /t REG_DWORD /d 0x00000001 /f





rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > CustomFeatures.txt
rem ------------------------------------------------------------------------






Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoAccent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoApostrophe" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoCap" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoCapAllTokens" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoCorrectFirstWord" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoCorrection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoCorrectVisualDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "AutoswitchAfterEmoji" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "ContactPenalty" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "DictationEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "DisablePersonalization" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EmojiSuggestion" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EmojiTranslation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EnableHwkbAutocorrection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EnableHwkbMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EnableHwkbTextPrediction" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HasTrailer" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HTREnabled" /t REG_DWORD /d "0" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HwkbAutocorrectionAlwaysOffList" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HwkbInlinePredictionAlwaysOffList" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HwkbInlinePredictionAlwaysOnList" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "HwkbLayoutMappingTemplate" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "IsVoiceTypingKeyEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "KeyboardMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "LMDataLoggerEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "MaxCorrections" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "MultilingualEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "NotActiveLanguagePenalty" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "NotPredictedLanguagePenalty" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "PeriodShortcut" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "Prediction" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "Private" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "ProofDataSources" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "SearchDataSources" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "Spellcheck" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "TouchKeyboard_EnableKeyAudioFeedback" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EnableExpressiveInputEmojiMultipleSelection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings" /v "EnableHwkbAutocorrection2" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Input\Settings" /v "AutoAccent" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Input\Settings" /v "AutoApostrophe" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Input\Settings" /v "AutoCap" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Input\Settings" /v "AutoCapAllTokens" /t REG_DWORD









rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > InputTelementry.txt
rem ------------------------------------------------------------------------

Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "0" /f
REM ; Disable Hey Cortana!
Reg.exe add "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\Microsoft.549981C3F5F10_8wekyb3d8bbwe!App" /v "AgentActivationEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CanCortanaBeEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilityFlags" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaInAmbientMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
Reg.exe delete "HKCR\CLSID\{09A5DFC5-8BA2-47DD-BF84-FFD7E0B24481}" /f
Reg.exe delete "HKCR\CLSID\{0DFA72F0-D26C-4987-A128-E3A5641C5568}" /f
Reg.exe delete "HKCR\CLSID\{10493933-661B-4083-9CE0-EFE48ADD0770}" /f
Reg.exe delete "HKCR\CLSID\{24AC8F2B-4D4A-4C17-9607-6A4B14068F97}" /f
Reg.exe delete "HKCR\CLSID\{3957a5ba-4448-bec4-24ac-16c4f5784ef5}" /f
Reg.exe delete "HKCR\CLSID\{C2D67532-D0FA-4022-89F7-8C1DF8A0C412}" /f
Reg.exe delete "HKCR\CLSID\{FF2F95A4-C6A1-4B48-BC87-8709250E0D03}" /f
REM ; Remove Classes (x86)
Reg.exe delete "HKCR\WOW6432Node\CLSID\{09A5DFC5-8BA2-47DD-BF84-FFD7E0B24481}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{0DFA72F0-D26C-4987-A128-E3A5641C5568}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{10493933-661B-4083-9CE0-EFE48ADD0770}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{24AC8F2B-4D4A-4C17-9607-6A4B14068F97}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{3957a5ba-4448-bec4-24ac-16c4f5784ef5}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{C2D67532-D0FA-4022-89F7-8C1DF8A0C412}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{FF2F95A4-C6A1-4B48-BC87-8709250E0D03}" /f
REM ; Remove Runtime Classes
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.AppsInfo" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.AudioHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.BrowserManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.ContextMenuManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.CortanaSettings" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.DesktopItem" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.DesktopLaunchersBrokered" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.DeviceAccessHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.FileSystemAccessHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.HostedFlowManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.InputsHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.LaunchersBrokered" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.MapiHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.MediaControlManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.MSAManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.OutlookHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.PathCommanding" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.PersonaHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.PowerHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.ProcessHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.SearchFolders" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.Speech.SpeechSettings" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.SpeechLanguageManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.SystemCommands" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.TaskbarNotificationManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Cortana.VisionHelper" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Internal.Services.Cortana.CortanaPermissionsAppServiceManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\WindowsInternal.Shell.UnifiedTile.Private.CortanaActivationBroker" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\CloudExperienceHostBroker.Cortana.OOBECortanaManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\CloudExperienceHostBroker.Cortana.OOBECortanaManagerCore" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\CloudExperienceHostBroker.Cortana.OOBECortanaManagerCoreForUser" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Media.Speech.Pal.CortanaAppManagement" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.CSGSuggestion.CSGSuggester" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.Search.ConstraintIndexDownloader" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.Search.QueryFactory" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.Search.SessionTelemetry" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.Search.SettingsConstraintIndexRefresher" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Cortana.ConstraintIndex.Search.SettingsJsonGenerator" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\CLSID\{C91D3A4B-AB17-498A-967E-E72A877F3428}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Cortana.CortanaActionableInsights" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Cortana.CortanaActionableInsightsOptions" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Cortana.CortanaPermissionsManager" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Services.Cortana.CortanaSettings" /f
REM ; APPX
Reg.exe delete "HKCR\AppXq0pwa73vfcn2qdexp8cexcc6qk87xh1r" /f
Reg.exe delete "HKCR\AppID\{24AC8F2B-4D4A-4C17-9607-6A4B14068F97}" /f
Reg.exe delete "HKCR\WOW6432Node\AppID\{24AC8F2B-4D4A-4C17-9607-6A4B14068F97}" /f

Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\MemoryDiagnostic" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{74F6069B-3D81-479E-AA67-42CE80F16799}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B97E9B4F-4348-4D52-8204-5EB3B9E3351C}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{74F6069B-3D81-479E-AA67-42CE80F16799}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{74F6069B-3D81-479E-AA67-42CE80F16799}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{B97E9B4F-4348-4D52-8204-5EB3B9E3351C}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{B97E9B4F-4348-4D52-8204-5EB3B9E3351C}" /f
Reg.exe delete "HKCR\CLSID\{AD182E17-4754-4742-8529-C11EEEF0C299}" /f
Reg.exe delete "HKCR\WOW6432Node\CLSID\{AD182E17-4754-4742-8529-C11EEEF0C299}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{990A2BD7-E738-46C7-B26F-1CF8FB9F1391}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{4116F60B-25B3-4662-B732-99A6111EDC0B}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{D94EE5D8-D189-4994-83D2-F68D7D41B0E6}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{E0CBF06C-CD8B-4647-BB8A-263B43F0F974}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{C06FF265-AE09-48F0-812C-16753D7CBA83}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{D48179BE-EC20-11D1-B6B8-00C04FA372A7}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{997B5D8D-C442-4F2E-BAF3-9C8E671E9E21}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{6BDD1FC1-810F-11D0-BEC7-08002BE2092F}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{4D36E97B-E325-11CE-BFC1-08002BE10318}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{A0A588A4-C46F-4B37-B7EA-C82FE89870C6}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{7EBEFBC0-3200-11D2-B4C2-00A0C9697D07}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{4D36E965-E325-11CE-BFC1-08002BE10318}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{53D29EF7-377C-4D14-864B-EB3A85769359}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{4658EE7E-F050-11D1-B6BD-00C04FA372A7}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{6BDD1FC5-810F-11D0-BEC7-08002BE2092F}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{DB4F6DDD-9C0E-45E4-9597-78DBBAD0F412}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{4D36E978-E325-11CE-BFC1-08002BE10318}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{4D36E977-E325-11CE-BFC1-08002BE10318}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{6D807884-7D21-11CF-801C-08002BE10318}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{CE5939AE-EBDE-11D0-B181-0000F8753EC4}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{4D36E969-E325-11CE-BFC1-08002BE10318}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{4D36E970-E325-11CE-BFC1-08002BE10318}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{4D36E979-E325-11CE-BFC1-08002BE10318}" /f
reg delete "HKLM\System\CurrentControlSet\Control\Class\{4D36E96D-E325-11CE-BFC1-08002BE10318}" /f
reg delete HKCR\Extensions\ContractId\Windows.Search\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.ComponentUI\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.ComponentUI\PackageId\Microsoft.Windows.StartMenuExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.AppService\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.AppService\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.StartMenuExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\MicrosoftWindows.UndockedDevKit_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.File\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.StartMenuExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\MicrosoftWindows.UndockedDevKit_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.PreInstalledConfigTask\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.ShareTarget\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.StartMenuExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\MicrosoftWindows.UndockedDevKit_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.File\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.StartMenuExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\MicrosoftWindows.UndockedDevKit_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.PreInstalledConfigTask\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.BingWeather_4.25.20211.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.GetHelp_10.1706.13331.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.Getstarted_8.2.22942.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.MicrosoftEdge_44.19041.423.0_neutral__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.MicrosoftOfficeHub_18.1903.1152.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.MixedReality.Portal_2000.19081.1301.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.MSPaint_6.1907.29027.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.Office.OneNote_16001.12026.20112.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.People_10.1902.633.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.WindowsAlarms_10.1906.2182.0_x64__8wekyb3d8bbwe /f  
=reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.WindowsFeedbackHub_1.1907.3152.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.WindowsCalculator_10.1906.55.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.WindowsMaps_5.1906.1972.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.WindowsStore_11910.1002.5.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.Xbox.TCUI_1.23.28002.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxApp_48.49.31001.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.19041.423.0_neutral_neutral_cw5n1h2txyewy /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameOverlay_1.46.11001.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGamingOverlay_2.34.28001.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxSpeechToTextOverlay_1.17.29001.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.ZuneMusic_10.19071.19011.0_x64__8wekyb3d8bbwe /f  
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.ZuneVideo_10.19071.19011.0_x64__8wekyb3d8bbwe /f

:: Disable Windows Firewall Logging
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile\Logging" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\Logging" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\Logging" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Defaults\FirewallPolicy\PublicProfile\Logging" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Defaults\FirewallPolicy\StandardProfile\Logging" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Defaults\FirewallPolicy\DomainProfile\Logging" /f

:: Disable Windows Logging
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Census" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EventLog\Windows PowerShell" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EventLog\Security" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EventLog\HardwareEvents" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Publishers" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels" /f
reg delete "HKCR\Interface\{101704EA-A7F9-46D2-AB94-016865AFDB25}" /f
reg delete "HKCR\Interface\{1D5EE066-188D-5BA9-4387-ACAEB0E7E305}" /f
reg delete "HKCR\Interface\{76E915B1-FF36-407C-9F57-160D3E540747}" /f
reg delete "HKCR\Interface\{926130B8-9955-4C74-BDC1-7CD0DECF9B03}" /f
reg delete "HKCR\WOW6432Node\Interface\{101704EA-A7F9-46D2-AB94-016865AFDB25}" /f
reg delete "HKCR\WOW6432Node\Interface\{1D5EE066-188D-5BA9-4387-ACAEB0E7E305}" /f
reg delete "HKCR\WOW6432Node\Interface\{76E915B1-FF36-407C-9F57-160D3E540747}" /f
reg delete "HKCR\WOW6432Node\Interface\{926130B8-9955-4C74-BDC1-7CD0DECF9B03}" /f

:: Remove Unneeded Xbox Registry
reg delete "HKU\.DEFAULT\System\GameConfigStore\Children" /f
reg delete "HKU\.DEFAULT\System\GameConfigStore\Parents" /f
reg delete "HKCU\System\GameConfigStore\Children" /f
reg delete "HKCU\System\GameConfigStore\Parents" /f

:: Remove WER Tasks
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Windows Error Reporting" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{197042B4-98BF-450C-B130-C7F5325F44C5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{3C07BEF8-D0D8-4BF9-BE8C-CC1C9238D075}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{3C733B76-F13E-4CE4-8AA2-64650EE1CEEE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8C92481A-408C-4DB3-A573-58356C50031D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{98CF8FDA-D33E-48ED-9DE8-1F412E0AA1F5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{197042B4-98BF-450C-B130-C7F5325F44C5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{197042B4-98BF-450C-B130-C7F5325F44C5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{3C07BEF8-D0D8-4BF9-BE8C-CC1C9238D075}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{3C07BEF8-D0D8-4BF9-BE8C-CC1C9238D075}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{3C733B76-F13E-4CE4-8AA2-64650EE1CEEE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{3C733B76-F13E-4CE4-8AA2-64650EE1CEEE}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{8C92481A-408C-4DB3-A573-58356C50031D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8C92481A-408C-4DB3-A573-58356C50031D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{98CF8FDA-D33E-48ED-9DE8-1F412E0AA1F5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{98CF8FDA-D33E-48ED-9DE8-1F412E0AA1F5}" /f

:: Remove Telemetry Tasks
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Device Setup" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DeviceDirectoryClient" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Device Information" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Feedback" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WDI" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Servicing" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4C5BCB25-2C1D-40F3-A779-FDE6280DB867}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Management\Provisioning" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0E511F8F-D1BF-49C8-B1B9-A6C784A17EDA}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1D3D9B10-30A4-459E-8B32-248CAD0EB7EF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{3EFB737D-965A-4364-8CBA-CCDA345B1C71}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4D8AF929-A2B3-4398-8AC3-930EE3740A71}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5D3BA13F-B950-4698-A372-55F955F6E957}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{6EBBDA02-612C-491A-B754-FB24CE3510E1}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{7DF874E8-7FD6-4D3B-AF77-B86AB6651760}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8D32BA78-B486-4C33-91A0-ACD11BEBF820}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{9D16CC13-AD60-4E18-83C1-1534222B5F7D}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{16F16846-2A2F-400A-A5E7-8FFAE2A48C94}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{21B1E46F-908D-4E3B-AF34-ED10B3D4C3ED}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{32D9F5E8-EACC-453C-B819-900D86D3A313}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{53A327CB-94A3-4760-B97D-A8C04D45A170}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{56C99193-9CC1-46F7-806F-604ED62EE2E2}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{78D30191-7738-4ED7-B56B-97F6934719C4}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{92D39E8A-36BD-4F3B-8E12-456B2886F1CF}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{176D5880-52E6-464C-BDD0-6899B9617F60}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{212D52EE-F7D2-4B4E-BE5F-CA40FFB19FA3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{308A544A-0B85-4635-9938-5B9A88A16362}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{400D2395-458B-4F18-9943-57FB05478707}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{587AAE6A-8CB0-4CA0-8F5C-C01D71EC2AC0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{724DAFB4-B407-46DC-861C-48536B97824B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{801F2A0B-7A94-4918-A7B8-4B1FAF0BDF16}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8282A489-9A18-40F7-83A0-574BF44A9E2A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{829B0AFB-3E91-42CB-82CB-F1E9D2838D35}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{927117DF-5FE3-46F3-9172-69365FAE9434}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1742562C-7151-4397-98F1-AC15F8BD9A7A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A318AB84-2A8B-41A7-89D8-6F38B163B16E}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B87AA1D0-09C1-442B-BFB7-0B0152175E97}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C9A1BC2D-03AC-4C37-8796-307A48BC04E3}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C23A8E44-73D5-4FA3-93E1-35FE3E25B38A}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C414EA4A-BF5B-43E7-8723-DAEB33B9EC3F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C7196807-928C-4147-B71F-3AA233FE4405}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{CC82E23B-A48E-4A69-90C2-CDB6597E4268}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{CF43F26F-E693-420B-9A99-CFC41B3353F0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{D11DD648-DF11-4BA5-A0E5-615B1E3B92F0}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{DF8DBB34-8159-4C7D-A84B-450EB24B215B}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{DF62C065-FA07-46AC-80F0-8859D1B8B352}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{EB8A0F5E-0899-4605-9CB5-AB650DD06A80}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{EDE3287A-EBBD-409C-8DAA-8E303B9A0F7F}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{FC72DC89-C126-48CC-BD93-C5822E8168E6}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{FCB84FB8-F1B5-4A84-A08C-4B5B2EB4D6AD}" /f






rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > DebloatRegistry.txt
rem ------------------------------------------------------------------------










Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Edge\SmartScreenEnabled" /ve /t REG_DWORD /d "0" /f
REM ; Disable SmartScreen in File Explorer and Windows Shell
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "off" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "ShellSmartScreenLevel" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Browser\AllowSmartScreen" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\SmartScreen\EnableSmartScreenInShell" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\SmartScreen\EnableAppInstallControl" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\SmartScreen\PreventOverrideForFilesInShell" /v "value" /t REG_DWORD /d "0" /f
REM ; Disable SmartScreen for Microsoft Store Apps
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "PreventOverride" /t REG_DWORD /d "0" /f
REM ; Configure App Install Control
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t REG_SZ /d "Anywhere" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d "0" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DelayedDesktopSwitchTimemout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "4" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f

Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\TroubleshootingSvc" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost\diagnostics" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost\wercplsupport" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\wercplsupport" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\WerSvc" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\AeLookupSvc" /f

Reg.exe delete "HKLM\SYSTEM\ControlSet001\Services\WacomPen" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Services\PenService" /f

Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FindMyDevice" /v "AllowFindMyDevice" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FindMyDevice" /v "LocationSyncEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowFindMyDevice" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Settings\FindMyDevice" /v "LocationSyncEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MdmCommon\SettingValues" /v "LocationSyncEnabled" /t REG_DWORD /d "0" /f


Reg.exe add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillServiceTimeout" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "HandlerTimeout" /t REG_DWORD /d "2147483647" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "HandlerTimeout" /t REG_DWORD /d "2147483647" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ThumbnailLivePreviewHoverTime" /t REG_DWORD /d "1" /f


Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Search\DisableSearch" /v "value" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "WakeUp" /t REG_DWORD /d "0" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Maintenance" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\TaskScheduler\Maintenance Configurator" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskStateFlags" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Maintenance" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{D8041C60-5E6F-4290-9E8D-E5EA50669A05}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{D8041C60-5E6F-4290-9E8D-E5EA50669A05}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{D8041C60-5E6F-4290-9E8D-E5EA50669A05}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskCleanup" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C1692FA0-130E-40EE-B858-E586325055D4}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{C1692FA0-130E-40EE-B858-E586325055D4}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{C1692FA0-130E-40EE-B858-E586325055D4}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsBackup" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Data Integrity Scan" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{2AC87143-4F04-451B-A3C4-273D0313029A}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5B854AF7-FF3C-4801-828A-9DBF6561A883}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{70AA91B8-7218-42D3-B416-49959D18E7E8}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A08367E5-27D7-47CB-ABCC-ED0ADF21D472}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{AF55360C-61AE-4AEA-B1FB-46B24385B460}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C567CF9E-1DF9-4D39-A7CC-7752A88A160E}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F2495FC2-A06A-42D0-BAB8-343D5134ADDB}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{2AC87143-4F04-451B-A3C4-273D0313029A}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{2AC87143-4F04-451B-A3C4-273D0313029A}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{5B854AF7-FF3C-4801-828A-9DBF6561A883}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{5B854AF7-FF3C-4801-828A-9DBF6561A883}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{70AA91B8-7218-42D3-B416-49959D18E7E8}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{70AA91B8-7218-42D3-B416-49959D18E7E8}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{A08367E5-27D7-47CB-ABCC-ED0ADF21D472}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{A08367E5-27D7-47CB-ABCC-ED0ADF21D472}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{AF55360C-61AE-4AEA-B1FB-46B24385B460}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{AF55360C-61AE-4AEA-B1FB-46B24385B460}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{C567CF9E-1DF9-4D39-A7CC-7752A88A160E}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{C567CF9E-1DF9-4D39-A7CC-7752A88A160E}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{F2495FC2-A06A-42D0-BAB8-343D5134ADDB}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{F2495FC2-A06A-42D0-BAB8-343D5134ADDB}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Power Efficiency Diagnostics" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{57955FAC-E7E3-403C-AAD2-EAF4C1CC6D69}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Setup" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{E87A4AC3-1613-4853-B7BF-40A2BF58226C}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{E87A4AC3-1613-4853-B7BF-40A2BF58226C}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{E87A4AC3-1613-4853-B7BF-40A2BF58226C}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WOF" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B605371B-86F7-4F95-8E78-1FC028140C24}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{EF6662AC-4856-4E1A-83EA-6765ED6B2F7C}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{B605371B-86F7-4F95-8E78-1FC028140C24}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{B605371B-86F7-4F95-8E78-1FC028140C24}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{EF6662AC-4856-4E1A-83EA-6765ED6B2F7C}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{EF6662AC-4856-4E1A-83EA-6765ED6B2F7C}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\USB" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{9E1E5175-8678-49EA-90BE-604365D7BD5E}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{9E1E5175-8678-49EA-90BE-604365D7BD5E}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{9E1E5175-8678-49EA-90BE-604365D7BD5E}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Storage Tiers Management" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{BF41FB28-0BB4-4029-AEE9-561184B4A6B6}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{BF41FB28-0BB4-4029-AEE9-561184B4A6B6}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{9840408F-DF7E-4838-8580-BD1EEB75796A}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{9840408F-DF7E-4838-8580-BD1EEB75796A}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{9840408F-DF7E-4838-8580-BD1EEB75796A}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{BF41FB28-0BB4-4029-AEE9-561184B4A6B6}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Boot" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\AppxDeploymentClient\Pre-staged app cleanup" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A8250646-BA40-4C81-A5B9-C6D6D1EE858A}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{A8250646-BA40-4C81-A5B9-C6D6D1EE858A}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{A8250646-BA40-4C81-A5B9-C6D6D1EE858A}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Live" /f

Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\XblGameSave" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F128B7E9-D0D8-4642-8B93-E23366252F97}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{F128B7E9-D0D8-4642-8B93-E23366252F97}" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{F128B7E9-D0D8-4642-8B93-E23366252F97}" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "Installed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "Shutdown" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\InputPersonalization" /v "Installed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\InputPersonalization" /v "Shutdown" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\InputPersonalization" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\InputPersonalization" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe delete "HKCU\Software\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "Installed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "Shutdown" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe delete "HKU\.DEFAULT\Software\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /f
Reg.exe add "HKU\.DEFAULT\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKU\.DEFAULT\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKU\.DEFAULT\Software\Microsoft\InputPersonalization" /v "Installed" /t REG_DWORD /d "0" /f
Reg.exe add "HKU\.DEFAULT\Software\Microsoft\InputPersonalization" /v "Shutdown" /t REG_DWORD /d "1" /f
Reg.exe add "HKU\.DEFAULT\Software\Microsoft\InputPersonalization" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKU\.DEFAULT\Software\Microsoft\InputPersonalization" /v "HarvestContacts" /t REG_DWORD /d "0" /f
REM ; Trained Data Store
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "InsightsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "LMDataLoggerEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKU\.DEFAULT\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKU\.DEFAULT\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "InsightsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKU\.DEFAULT\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "LMDataLoggerEnabled" /t REG_DWORD /d "0" /f
REM ; Keyboard Suggestions
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\TextInput\AllowHardwareKeyboardTextSuggestions" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\TextInput\AllowKeyboardTextSuggestions" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\TextInput\AllowTextInputSuggestionUpdate" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\TextInput\AllowLinguisticDataCollection" /v "value" /t REG_DWORD /d "0" /f
REM ;IME
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\TextInput\AllowIMELogging" /v "value" /t REG_DWORD /d "0" /f
REM ;Inking and Typing Personalization
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CPSS\UserPolicy\ImproveInkingAndTyping" /v "DefaultValue" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CPSS\UserPolicy\InkingAndTypingPersonalization" /v "DefaultValue" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CPSS\DevicePolicy\InkingAndTypingPersonalization" /v "DefaultValue" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CPSS\DevicePolicy\ImproveInkingAndTyping" /v "DefaultValue" /t REG_DWORD /d "0" /f
REM ;Handwriting Report
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f
REM ;IME Logging
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\TextInput\AllowIMELogging" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\software\policies\microsoft\ime\shared" /v "UserDict" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\software\policies\microsoft\ime\shared" /v "UseHistorybasedPredictiveInput" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\software\policies\microsoft\ime\shared" /v "Enable Cloud Candidate" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\software\policies\microsoft\ime\shared" /v "Enable Lexicon Update" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\software\policies\microsoft\ime\shared" /v "misconvlogging" /t REG_DWORD /d "0" /f







rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > WindowsResposive.txt
rem ------------------------------------------------------------------------







Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Escalation" /v "DisableEscalation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "AutoApproveOSDumps" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "DontShowUI" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "ConfigureArchive" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "DisableArchive" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "BypassDataThrottling" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontShowUI" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DoReport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "AutoApproveOSDumps" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "ConfigureArchive" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DisableArchive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontShowUI" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "BypassDataThrottling" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "OobeCompleted" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontShowUI" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DoReport" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "AutoApproveOSDumps" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "ConfigureArchive" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DisableArchive" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontShowUI" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "BypassDataThrottling" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "OobeCompleted" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "ForceQueueMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWFileTreeRoot" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoExternalURL" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoFileCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWNoSecondLevelCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting\DW" /v "DWReporteeName" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "EnableZip" /t REG_DWORD /d "1" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "ErrorPort" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "ServiceTimeout" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "MachineID" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Assert Filtering Policy" /v "ReportAndContinue" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\BrokerUp" /v "WWAJSE" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "NewUserDefaultConsent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\WMR" /v "Disable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\Windows Error Reporting" /v "DisableWER" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Windows" /v "ErrorMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Windows" /v "NoInteractiveServices" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Windows" /v "ShellErrorMode" /t REG_DWORD /d "0" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\PolicyManager\default\DeviceGuard" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\PolicyManager\default\VirtualizationBasedTechnology" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "DeployConfigCIPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "RequirePlatformSecurityFeature" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "CachedDrtmAuthIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "LsaCfgFlags" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "RequireMicrosoftSignedBootChain" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "RequirePlatformSecurityFeatures" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "Locked" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "ConfigCIPolicyFilePath" /t REG_SZ /d "C:\Windows\schemas\CodeIntegrity\ExamplePolicies\AllowAll.xml" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "HypervisorEnforcedCodeIntegrity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "ConfigureSystemGuardLaunch" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\CredentialGuard" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\DeviceGuard\EnableVirtualizationBasedSecurity" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\DeviceGuard\ConfigureSystemGuardLaunch" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\DeviceGuard\LsaCfgFlags" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\DeviceGuard\RequirePlatformSecurityFeatures" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\VirtualizationBasedTechnology\HypervisorEnforcedCodeIntegrity" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\VirtualizationBasedTechnology\RequireUEFIMemoryAttributesTable" /v "value" /t REG_DWORD /d "0" /f






rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > ErrorReporting.txt
rem ------------------------------------------------------------------------



Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFxSetting" /t REG_DWORD /d "3" /f
Reg.exe add "HKU\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFxSetting" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoThumbNailCache" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisableThumbnailCache" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoThumbnailCache" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ThumbnailQuality" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "4096" /f
Reg.exe delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisableThumbnails" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /t REG_BINARY /d "00000000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "Reason Setting" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "HoverSelectDesktops" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRemoteRecursiveEvents" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoPublishingWizard" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoMSAppLogo5ChannelNotify" /t REG_DWORD /d "1" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "DisableAppInstallsOnFirstLogon" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "DisableResolveStoreCategories" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "DisableUpgradeCleanup" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shutdown" /v "CleanShutdown" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "GreyMSIAds" /t REG_DWORD /d "0" /f

Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "SearchOnTaskbarMode" /t REG_DWORD /d "0" /f


reg add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "Theme" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-314559Enabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-314563Enabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338387Enabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353698Enabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "FeatureManagementEnabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RemediationRequired" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d "0" /f >nul 2>nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "0" /f >nul 2>nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f >nul 2>nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f >nul 2>nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d "0" /f >nul 2>nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d "0" /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\Subscriptions" /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps" /f >nul 2>nul
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d 0 /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338387Enabled" /t REG_DWORD /d 0 /f >nul 2>nul





rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Smoother.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------



set "components=Printing-PrintToPDFServices-Features Printing-XPSServices-Features Xps-Foundation-Xps-Viewer"
for %%a in (%components%) do (
    PowerShell -Command "Disable-WindowsOptionalFeature -Online -FeatureName %%a -NoRestart" >nul 2>nul
)





rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Mitigations.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------

:: Defragment Database Indexing Service File
net stop wsearch /y >nul 2>nul
esentutl /d C:\ProgramData\Microsoft\Search\Data\Applications\Windows\Windows.edb >nul 2>nul
net start wsearch >nul 2>nul




rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Defragmentation.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------

:: Telementry 
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvent" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryfayrexLogOn" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryfayrexFallBack" /Disable >nul 2>nul
schtasks /Change /TN "\Microsoft\Office\OfficeTelemetryfayrexFallBack2016" /Disable >nul 2>nul
schtasks /Change /TN "\Microsoft\Office\OfficeTelemetryfayrexLogOn2016" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Office\Office 15 Subscription Heartbeat" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Office\Office 16 Subscription Heartbeat" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable >nul 2>nul
schtasks /Change /TN "NIUpdateServiceStartupTask" /Disable >nul 2>nul
schtasks /Change /TN "CCleaner Update" /Disable >nul 2>nul
schtasks /Change /TN "CCleanerSkipUAC - %username%" /Disable >nul 2>nul
schtasks /Change /TN "Adobe Acrobat Update Task" /Disable >nul 2>nul
schtasks /Change /TN "AMDLinkUpdate" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Office\Office Automatic Updates 2.0" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Office\Office Feature Updates" /Disable >nul 2>nul
schtasks /Change /TN "Microsoft\Office\Office Feature Updates Logon" /Disable >nul 2>nul
schtasks /Change /TN "GoogleUpdateTaskMachineCore" /Disable >nul 2>nul
schtasks /Change /TN "GoogleUpdateTaskMachineUA" /Disable >nul 2>nul
schtasks /DELETE /TN "AMDInstallLauncher" /f >nul 2>nul
schtasks /DELETE /TN "AMDLinkUpdate" /f >nul 2>nul
schtasks /DELETE /TN "AMDRyzenMasterSDKTask" /f >nul 2>nul
schtasks /DELETE /TN "DUpdaterTask" /f >nul 2>nul
schtasks /DELETE /TN "ModifyLinkUpdate" /f >nul 2>nul

:: powershell telemntry
setx POWERSHELL_TELEMETRY_OPTOUT 1 >nul 2>nul



rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > OfficeTelementry.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------






:: storage
PowerShell "Disable-MemoryCompression -PageCombining"
for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "DmaRemappingCompatible" ^| find /i "Services\" ') do (
    reg add "%%a" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
)

REM Disable specified scheduled tasks
for %%a in (
    "\Microsoft\Windows\ApplicationData\appuriverifierdaily"
    "\Microsoft\Windows\ApplicationData\appuriverifierinstall"
    "\Microsoft\Windows\ApplicationData\DsSvcCleanup"
    "\Microsoft\Windows\Application Experience\PcaPatchDbTask"
    "\Microsoft\Windows\Application Experience\StartupAppTask"
    "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
    "\Microsoft\Windows\Defrag\ScheduledDefrag"
    "\Microsoft\Windows\Device Information\Device"
    "\Microsoft\Windows\Device Setup\Metadata Refresh"
    "\Microsoft\Windows\Diagnosis\Scheduled"
    "\Microsoft\Windows\DiskCleanup\SilentCleanup"
    "\Microsoft\Windows\DiskFootprint\Diagnostics"
    "\Microsoft\Windows\InstallService\ScanForUpdates"
    "\Microsoft\Windows\InstallService\ScanForUpdatesAsUser"
    "\Microsoft\Windows\InstallService\SmartRetry"
    "\Microsoft\Windows\Management\Provisioning\Cellular"
    "\Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents"
    "\Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic"
    "\Microsoft\Windows\MUI\LPRemove"
    "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
    "\Microsoft\Windows\Printing\EduPrintProv"
    "\Microsoft\Windows\PushToInstall\LoginCheck"
    "\Microsoft\Windows\Ras\MobilityManager"
    "\Microsoft\Windows\Registry\RegIdleBackup"
    "\Microsoft\Windows\RetailDemo\CleanupOfflineContent"
    "\Microsoft\Windows\Shell\IndexerAutomaticMaintenance"
    "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork"
    "\Microsoft\Windows\StateRepository\MaintenanceTasks"
    "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
    "\Microsoft\Windows\Time Synchronization\SynchronizeTime"
    "\Microsoft\Windows\Time Zone\SynchronizeTimeZone"
    "\Microsoft\Windows\UpdateOrchestrator\Report policies"
    "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task"
    "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan"
    "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask"
    "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker"
    "\Microsoft\Windows\UPnP\UPnPHostConfig"
    "\Microsoft\Windows\WaaSMedic\PerformRemediation"
    "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
    "\Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange"
    "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
    "\Microsoft\Windows\Wininet\CacheTask"
    "\Microsoft\XblGameSave\XblGameSaveTask"
) do (
    schtasks /change /disable /TN %%a > nul
)

rem ------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Storage.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------





reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "MaximumRecordLength" /t REG_QWORD /d "0x00d088c310000000" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "SystemAudioGain" /t REG_QWORD /d "0x1027000000000000" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "MicrophoneGain" /t REG_QWORD /d "0x1027000000000000" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "KGLRevision" /t REG_DWORD /d "1824" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "KGLToGCSUpdatedRevision" /t REG_DWORD /d "1824" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioEncodingBitrate" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingBitrate" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingHeight" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingWidth" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalBufferLength" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalBufferLengthUnit" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureOnBatteryAllowed" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureOnWirelessDisplayAllowed" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingBitrateMode" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingResolutionMode" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingFrameRateMode" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "EchoCancellationEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleGameBar" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleGameBar" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKSaveHistoricalVideo" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMSaveHistoricalVideo" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleRecording" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleRecording" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKTakeScreenshot" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMTakeScreenshot" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleRecordingIndicator" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleRecordingIndicator" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleMicrophoneCapture" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleMicrophoneCapture" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleCameraCapture" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleCameraCapture" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleBroadcast" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleBroadcast" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "MicrophoneCaptureEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f >NUL 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f >NUL 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f >NUL 2>&1
reg delete "HKCU\System\GameConfigStore\Children" /f >NUL 2>&1
reg delete "HKCU\System\GameConfigStore\Parents" /f >NUL 2>&1
reg add "HKEY_USERS\.DEFAULT\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKEY_USERS\.DEFAULT\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f >NUL 2>&1
reg add "HKEY_USERS\.DEFAULT\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKEY_USERS\.DEFAULT\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f >NUL 2>&1
reg add "HKEY_USERS\.DEFAULT\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f >NUL 2>&1
reg delete "HKEY_USERS\.DEFAULT\System\GameConfigStore\Children" /f >NUL 2>&1
reg delete "HKEY_USERS\.DEFAULT\System\GameConfigStore\Parents" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f >NUL 2>&1
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\HotStart" /f >NUL 2>&1
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Sidebar" /f >NUL 2>&1
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Telephony" /f >NUL 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers" /f >NUL 2>&1
reg delete "HKCU\Printers" /f >NUL 2>&1
reg delete "HKLM\SYSTEM\ControlSet001\Control\Print" /f >NUL 2>&1
reg delete "HKLM\SYSTEM\ControlSet002\Control\Print" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f >NUL 2>&1
powercfg -h off >NUL 2>&1
sc delete DiagTrack
sc delete dmwappushservice
sc delete WerSvc
sc delete OneSyncSvc
sc delete MessagingService
sc delete wercplsupport
sc delete PcaSvc
sc config wlidsvc start=demand
sc delete wisvc
sc delete RetailDemo
sc delete shpamsvc 
sc delete TermService
sc delete UmRdpService
sc delete SessionEnv
sc delete TroubleshootingSvc
sc delete diagnosticshub.standardcollector.service


schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\ProgramDataUpdater" /f
schtasks /delete /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /f
schtasks /delete /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /f
schtasks /delete /tn "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyMonitor" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyRefresh" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyUpload" /f
schtasks /delete /tn "Microsoft\Windows\Autochk\Proxy" /f
schtasks /delete /tn "Microsoft\Windows\Maintenance\WinSAT" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\AitAgent" /f
schtasks /delete /tn "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /f
schtasks /delete /tn "Microsoft\Windows\FileHistory\File History (maintenance mode)" /f
schtasks /delete /tn "Microsoft\Windows\PI\Sqm-Tasks" /f
schtasks /delete /tn "Microsoft\Windows\AppID\SmartScreenSpecific" /f
schtasks /delete /tn "Microsoft\Windows\SettingSync\BackgroundUploadTask" /f
schtasks /delete /tn "Microsoft\Windows\AppID\SmartScreenSpecific" /f
schtasks /delete /tn "Microsoft\Windows\ApplicationData\CleanupTemporaryState" /f
schtasks /delete /tn "Microsoft\Windows\ApplicationData\DsSvcCleanup" /f
schtasks /delete /tn "Microsoft\Windows\ApplicationData\appuriverifierinstall" /f
schtasks /delete /tn "Microsoft\Windows\ApplicationData\appuriverifierdaily" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\AitAgent" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\ProgramDataUpdater" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\StartupAppTask" /f
schtasks /delete /tn "Microsoft\Windows\Application Experience\PcaPatchDbTask" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\HypervisorFlightingTask" /f
schtasks /delete /tn "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /f
schtasks /delete /tn "Microsoft\Windows\Diagnosis\Scheduled" /f
schtasks /delete /tn "Microsoft\Windows\DiskFootprint\Diagnostics" /f
schtasks /delete /tn "Microsoft\Windows\DiskFootprint\StorageSense" /f
schtasks /delete /tn "Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate" /f
schtasks /delete /tn "Microsoft\Windows\Feedback\Siuf\DmClient" /f
schtasks /delete /tn "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /f
schtasks /delete /tn "Microsoft\Windows\File Classification Infrastructure\Property Definition Sync" /f
schtasks /delete /tn "Microsoft\Windows\Management\Provisioning\Logon" /f
schtasks /delete /tn "Microsoft\Windows\Maps\MapsToastTask" /f
schtasks /delete /tn "Microsoft\Windows\Maps\MapsUpdateTask" /f
schtasks /delete /tn "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /f
schtasks /delete /tn "Microsoft\Windows\Multimedia\SystemSoundsService" /f
schtasks /delete /tn "Microsoft\Windows\NlaSvc\WiFiTask" /f
schtasks /delete /tn "Microsoft\Windows\NetCfg\BindingWorkItemQueueHandler" /f
schtasks /delete /tn "Microsoft\Windows\NetTrace\GatherNetworkInfo" /f
schtasks /delete /tn "Microsoft\Windows\Offline Files\Background Synchronization" /f
schtasks /delete /tn "Microsoft\Windows\Offline Files\Logon Synchronization" /f
schtasks /delete /tn "Microsoft\Windows\PI\Sqm-Tasks" /f
schtasks /delete /tn "Microsoft\Windows\Ras\MobilityManager" /f
schtasks /delete /tn "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /f
schtasks /delete /tn "Microsoft\Windows\Servicing\StartComponentCleanup" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyMonitor" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyRefresh" /f
schtasks /delete /tn "Microsoft\Windows\SpacePort\SpaceAgentTask" /f
schtasks /delete /tn "Microsoft\Windows\SpacePort\SpaceManagerTask" /f
schtasks /delete /tn "Microsoft\Windows\Speech\SpeechModelDownloadTask" /f
schtasks /delete /tn "Microsoft\Windows\User Profile Service\HiveUploadTask" /f
schtasks /delete /tn "Microsoft\Windows\WCM\WiFiTask" /f
schtasks /delete /tn "Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /f
schtasks /delete /tn "Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /f
schtasks /delete /tn "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /f
schtasks /delete /tn "Microsoft\Windows\Windows Defender\Windows Defender Verification" /f
schtasks /delete /tn "Microsoft\Windows\Windows Error Reporting\QueueReporting" /f
schtasks /delete /tn "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /f
schtasks /delete /tn "Microsoft\Windows\Windows Media Sharing\UpdateLibrary" /f
schtasks /delete /tn "Microsoft\Windows\Wininet\CacheTask" /f
schtasks /delete /tn "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /f
schtasks /delete /tn "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /f
schtasks /delete /tn "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /f
schtasks /delete /tn "Microsoft\XblGameSave\XblGameSaveTask" /f
schtasks /delete /tn "Microsoft\XblGameSave\XblGameSaveTaskLogon" /f
schtasks /delete /tn "Driver Easy Scheduled Scan" /f
schtasks /delete /tn "Microsoft\Office\OfficeTelemetryAgentFallBack2016" /f
schtasks /delete /tn "Microsoft\Office\OfficeTelemetryAgentLogOn2016" /f
schtasks /delete /tn "Microsoft\Office\Office ClickToRun Service Monitor" /f
schtasks /delete /tn "Microsoft\Office\OfficeTelemetryAgentLogOn" /f
schtasks /delete /tn "Microsoft\Office\OfficeTelemetryAgentFallBack" /f
schtasks /delete /tn "Microsoft\Office\Office 15 Subscription Heartbeat" /f
schtasks /delete /tn "Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents" /f
schtasks /delete /tn "Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic" /f
schtasks /delete /tn "Microsoft\Windows\HelloFace\FODCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\Defrag\ScheduledDefrag" /f
schtasks /delete /tn "Microsoft\Windows\Clip\License Validation" /f
schtasks /delete /tn "Microsoft\Windows\Device Information\Device" /f
schtasks /delete /tn "Microsoft\Windows\Device Information\Device User" /f
schtasks /delete /tn "Microsoft\Windows\PerfTrack\BackgroundConfigSurveyor" /f
schtasks /delete /tn "Microsoft\Windows\Location\Notifications" /f
schtasks /delete /tn "Microsoft\Windows\Location\WindowsActionDialog" /f
schtasks /delete /tn "Microsoft\Windows\Retail Demo\CleanupOfflineContent" /f
schtasks /delete /tn "Microsoft\Windows\Shell\FamilySafetyRefreshTask" /f
schtasks /delete /tn "Microsoft\Windows\UPnP\UPnPHostConfig" /f
schtasks /delete /tn "Microsoft\Windows\WaaSMedic\PerformRemediation" /f
schtasks /delete /tn "Microsoft\Windows\Time Zone\SynchronizeTimeZone" /f
schtasks /delete /tn "Microsoft\Windows\Time Synchronization\SynchronizeTime" /f
schtasks /delete /tn "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /f
schtasks /delete /tn "Microsoft\Windows\StateRepository\MaintenanceTasks" /f
schtasks /delete /tn "Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork" /f
schtasks /delete /tn "Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /f
schtasks /delete /tn "Microsoft\Windows\Registry\RegIdleBackup" /f
schtasks /delete /tn "Microsoft\Windows\PushToInstall\LoginCheck" /f
schtasks /delete /tn "Microsoft\Windows\Printing\EduPrintProv" /f
schtasks /delete /tn "Microsoft\Windows\MUI\LPRemove" /f
schtasks /delete /tn "Microsoft\Windows\Management\Provisioning\Cellular" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\SmartRetry" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\ScanForUpdatesAsUser" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\ScanForUpdates" /f
schtasks /delete /tn "Microsoft\Windows\DiskCleanup\SilentCleanup" /f
schtasks /delete /tn "Microsoft\Windows\Device Setup\Metadata Refresh" /f
schtasks /delete /tn "AMDInstallLauncher" /f
schtasks /delete /tn "AMDLinkUpdate" /f
schtasks /delete /tn "AMDRyzenMasterSDKTask" /f
schtasks /delete /tn "DUpdaterTask" /f
schtasks /delete /tn "ModifyLinkUpdate" /f
schtasks /delete /tn "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /f
schtasks /delete /tn "Microsoft\Windows\DUSM\dusmtask" /f
schtasks /delete /tn "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask" /f
schtasks /delete /tn "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /f
schtasks /delete /tn "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /f
schtasks /delete /tn "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /f
schtasks /delete /tn "Microsoft\Windows\Flighting\OneSettings\RefreshCache" /f
schtasks /delete /tn "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\Input\MouseSyncDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\Input\PenSyncDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\Input\TouchpadSyncDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\International\Synchronize Language Settings" /f
schtasks /delete /tn "Microsoft\Windows\LanguageComponentsInstaller\Installation" /f
schtasks /delete /tn "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /f
schtasks /delete /tn "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation" /f
schtasks /delete /tn "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /f
schtasks /delete /tn "Microsoft\Windows\Printing\PrinterCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\PushToInstall\Registration" /f
schtasks /delete /tn "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /f
schtasks /delete /tn "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /f
schtasks /delete /tn "Microsoft\Windows\Setup\SetupCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\Setup\SnapshotCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /f
schtasks /delete /tn "Microsoft\Windows\Sysmain\ResPriStaticDbSync" /f
schtasks /delete /tn "Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /f
schtasks /delete /tn "Microsoft\Windows\Task Manager\Interactive" /f
schtasks /delete /tn "Microsoft\Windows\TPM\Tpm-HASCertRetr" /f
schtasks /delete /tn "Microsoft\Windows\TPM\Tpm-Maintenance" /f
schtasks /delete /tn "Microsoft\Windows\WDI\ResolutionHost" /f
schtasks /delete /tn "Microsoft\Windows\WOF\WIM-Hash-Management" /f
schtasks /delete /tn "Microsoft\Windows\WOF\WIM-Hash-Validation" /f
schtasks /delete /tn "Microsoft\Windows\WwanSvc\NotificationTask" /f
schtasks /delete /tn "Microsoft\Windows\WwanSvc\OobeDiscovery" /f
schtasks /delete /tn "MicrosoftEdgeUpdateTaskMachineUA" /f
schtasks /delete /tn "MicrosoftEdgeUpdateTaskMachineCore" /f
schtasks /delete /tn "Microsoft\Windows\DirectX\DirectXDatabaseUpdater" /f
schtasks /delete /tn "Microsoft\Windows\BitLocker\BitLocker Encrypt All Drives" /f
schtasks /delete /tn "Microsoft\Windows\BitLocker\BitLocker MDM policy Refresh" /f
schtasks /delete /tn "Microsoft\Windows\DirectX\DXGIAdapterCache" /f
schtasks /delete /tn "Microsoft\Windows\USB\Usb-Notifications" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\IntegrityCheck" /f
schtasks /delete /tn "Microsoft\Windows\ExploitGuard\ExploitGuard MDM policy Refresh" /f
schtasks /delete /tn "Microsoft\Windows\Chkdsk\SyspartRepair" /f
schtasks /delete /tn "Microsoft\Windows\AppID\EDPPolicyManager" /f
schtasks /delete /tn "Microsoft\Windows\AppListBackup\Backup" /f
schtasks /delete /tn "Microsoft\Windows\Bluetooth\UninstallDeviceTask" /f
schtasks /delete /tn "Microsoft\Windows\Chkdsk\ProactiveScan" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\HandleCommand" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\HandleWnsCommand" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\LocateCommandUserSession" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceAccountChange" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\RegisterDevicePolicyChange" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceProtectionStateChanged" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceSettingChange" /f
schtasks /delete /tn "Microsoft\Windows\DeviceDirectoryClient\RegisterUserDevice" /f
schtasks /delete /tn "Microsoft\Windows\CertificateServicesClient\SystemTask" /f
schtasks /delete /tn "Microsoft\Windows\CertificateServicesClient\UserTask" /f
schtasks /delete /tn "Microsoft\Windows\CertificateServicesClient\UserTask-Roam" /f
schtasks /delete /tn "Microsoft\Windows\EDP\EDPAppLaunchTask" /f
schtasks /delete /tn "Microsoft\Windows\EDP\EDPAuthTask" /f
schtasks /delete /tn "Microsoft\Windows\EDP\EDPInaccessibleCredentialsTask" /f
schtasks /delete /tn "Microsoft\Windows\EDP\StorageCardEncryptionTask" /f
schtasks /delete /tn "Microsoft\Windows\Shell\CreateObjectTask" /f
schtasks /delete /tn "Microsoft\Windows\Shell\ThemesSyncedImageDownload" /f
schtasks /delete /tn "Microsoft\Windows\Shell\UpdateUserPictureTask" /f
schtasks /delete /tn "Microsoft\Windows\TaskScheduler\Maintenance Configurator" /f
schtasks /delete /tn "Microsoft\Windows\WindowsColorSystem\Calibration Loader" /f
schtasks /delete /tn "Microsoft\Windows\Printing\PrintJobCleanupTask" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\WakeUpAndContinueUpdates" /f
schtasks /delete /tn "Microsoft\Windows\InstallService\WakeUpAndScanForUpdates" /f
schtasks /delete /tn "Microsoft\Windows\Input\InputSettingsRestoreDataAvailable" /f
schtasks /delete /tn "Microsoft\Windows\Input\syncpensettings" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\StorageOnArrival" /ve /t REG_SZ /d "MSTakeNoAction" /f >NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\StorageOnArrival" /ve /t REG_SZ /d "MSTakeNoAction" /f >NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\GRE_Initialize" /v "DisableRemoteFontBootCache" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows NT\CurrentVersion\GRE_Initialize" /v "DisableRemoteFontBootCache" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\MUI\StringCacheSettings" /v "StringCacheGeneration" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "disabledomaincreds" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "restrictanonymous" /t REG_DWORD /d "1" /f >NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "EnableLog" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "EnableDpxLog" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "EnableLog" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "EnableDpxLog" /t REG_DWORD /d "0" /f >NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Ole" /v "EnableDCOM" /t REG_SZ /d "N" /f >NUL 2>&1
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Ole" /v "EnableDCOM" /t REG_SZ /d "N" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Font Drivers" /v "Adobe Type Manager" /f >NUL 2>&1
	reg delete "HKLM\System\ControlSet001\Control\Terminal Server\Wds\rdpwd" /v "StartupPrograms" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\services\Beep" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
	for %%i in (tif tiff bmp dib gif jfif jpe jpeg jpg jxr png) do (
        reg add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".%%~i" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f) >NUL 2>&1
	for %%i in ("Application Experience\Microsoft Compatibility Appraiser" "Application Experience\ProgramDataUpdater"
	"Application Experience\StartupAppTask" "Customer Experience Improvement Program\Consolidator"
	"Customer Experience Improvement Program\KernelCeipTask" "Customer Experience Improvement Program\UsbCeip"
	"Customer Experience Improvement Program\Uploader" "Autochk\Proxy" "CloudExperienceHost\CreateObjectTask"
	"DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" "DiskFootprint\Diagnostics"
	"UpdateOrchestrator\Schedule Scan" "WindowsUpdate\Scheduled Start" "Servicing\StartComponentCleanup" 
    "Recovery Environment\VerifyWinRE" "EDP\StorageCardEncryption Task" "BitLocker\BitLocker Encrypt All Drives" 
    "BitLocker\BitLocker MDM policy Refresh" "ApplicationData\DsSvcCleanup") do schtasks /change /tn "\Microsoft\Windows\%%~i" /disable >NUL 2>&1



rem --------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > WindowsSettings.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------





	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Boot\{304D2127-E6ED-4C82-B9B3-63B3B54A4D66}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Boot\{44AF7ADA-1C0D-43B1-A063-9E7581F7730B}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{88CE6B8C-B14B-499A-8D43-214F06116F07}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{892625FE-213B-4B60-95ED-A1CEFCAA365D}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Maintenance\{00446CF1-8668-472D-BEDD-D0BB88DBA009}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Maintenance\{117E2D01-1275-4560-90E9-A34BB4EE69A3}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Maintenance\{57C76B66-AD3C-4221-81FA-55045859B06F}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Maintenance\{70EA2999-165C-4933-9027-250FB8B772F8}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Maintenance\{A2FADBDF-6855-42F7-BDFC-F0C510EDA9BC}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Maintenance\{C9EC268B-1D36-4AF0-A1EB-2C1BC3B455D9}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Maintenance\{F0FCA53B-F391-48AD-91F6-D1994846E55E}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{00446CF1-8668-472D-BEDD-D0BB88DBA009}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{117E2D01-1275-4560-90E9-A34BB4EE69A3}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{2DFC28A5-3035-4555-A9E6-CE6D44EB1DB3}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{309BA321-F7C8-46A4-BA50-5FAC484229CB}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{34ADEFE8-89DB-43BC-8C0B-14BB34D69F6D}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{3AB082DC-B77E-4487-BB5D-5DCB3A6C2B3C}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{3E51A991-10E2-4B16-B5B4-A2F051544BB9}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{3FC4BE91-4A96-48F5-8858-1628CB88EFB5}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{4671B5C1-A383-4428-A45A-8D348E4CB873}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{57C76B66-AD3C-4221-81FA-55045859B06F}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{6EF4AFAB-DF3D-467E-BB2C-66C7FDC9E4E7}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{70EA2999-165C-4933-9027-250FB8B772F8}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{82CE5325-8693-4EE3-BB57-939DC11EA637}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{87094343-6C1F-4855-A6B9-305BA74AB761}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8FF5DE67-C947-4488-997B-4184221E7D50}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{90F68E39-00DE-4159-BCDB-5C5759A5CF53}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{9B29B882-A95C-438B-BF91-E7C31B1D82D1}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{A08D6A77-C926-4E78-9ED0-09836E2769AE}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{A2FADBDF-6855-42F7-BDFC-F0C510EDA9BC}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{C5D47392-881C-422A-9BF8-E4916B55CD22}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{C9EC268B-1D36-4AF0-A1EB-2C1BC3B455D9}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{EAD9ED20-AC69-4E97-8CCB-E8F62CA707B3}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{EC3EFE4E-A2E4-4C66-975C-CA2EFD0D42CD}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{F0FCA53B-F391-48AD-91F6-D1994846E55E}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{00446CF1-8668-472D-BEDD-D0BB88DBA009}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{117E2D01-1275-4560-90E9-A34BB4EE69A3}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{2DFC28A5-3035-4555-A9E6-CE6D44EB1DB3}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{304D2127-E6ED-4C82-B9B3-63B3B54A4D66}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{309BA321-F7C8-46A4-BA50-5FAC484229CB}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{34ADEFE8-89DB-43BC-8C0B-14BB34D69F6D}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{3AB082DC-B77E-4487-BB5D-5DCB3A6C2B3C}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{3E51A991-10E2-4B16-B5B4-A2F051544BB9}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{3FC4BE91-4A96-48F5-8858-1628CB88EFB5}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{44AF7ADA-1C0D-43B1-A063-9E7581F7730B}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4671B5C1-A383-4428-A45A-8D348E4CB873}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{57C76B66-AD3C-4221-81FA-55045859B06F}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{6EF4AFAB-DF3D-467E-BB2C-66C7FDC9E4E7}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{70EA2999-165C-4933-9027-250FB8B772F8}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{82CE5325-8693-4EE3-BB57-939DC11EA637}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{87094343-6C1F-4855-A6B9-305BA74AB761}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{88CE6B8C-B14B-499A-8D43-214F06116F07}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{892625FE-213B-4B60-95ED-A1CEFCAA365D}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8FF5DE67-C947-4488-997B-4184221E7D50}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{90F68E39-00DE-4159-BCDB-5C5759A5CF53}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{9B29B882-A95C-438B-BF91-E7C31B1D82D1}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A08D6A77-C926-4E78-9ED0-09836E2769AE}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{A2FADBDF-6855-42F7-BDFC-F0C510EDA9BC}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C5D47392-881C-422A-9BF8-E4916B55CD22}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{C9EC268B-1D36-4AF0-A1EB-2C1BC3B455D9}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{EAD9ED20-AC69-4E97-8CCB-E8F62CA707B3}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{EC3EFE4E-A2E4-4C66-975C-CA2EFD0D42CD}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{F0FCA53B-F391-48AD-91F6-D1994846E55E}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\BitLocker" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Chkdsk" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Data Integrity Scan" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\DiskFootprint" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\InstallService" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\RecoveryEnvironment" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\Registry" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\SoftwareProtectionPlatform" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\TextServicesFramework" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UpdateOrchestrator\Report policies" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UpdateOrchestrator\Schedule Work" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\USB" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\User Profile Service" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\WindowsUpdate\Scheduled Start" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{41F5FC9D-EE65-4CA4-A908-91B3587198E0}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{41F5FC9D-EE65-4CA4-A908-91B3587198E0}" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\XblGameSave" /f >NUL 2>&1




rem --------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > TaskCache.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------




	DISM /Online /Remove-Capability /CapabilityName:MathRecognizer~~~~0.0.1.0 /norestart /quiet >NUL 2>&1
	timeout 2 >NUL 2>&1
	DISM /Online /Remove-Capability /CapabilityName:OneCoreUAP.OneSync~~~~0.0.1.0 /norestart /quiet >NUL 2>&1
	timeout 2 >NUL 2>&1

FOR /F "eol=E" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "EnableHIPM"^| FINDSTR /V "EnableHIPM"') DO (
	REG ADD "%%a" /F /V "EnableHIPM" /T REG_DWORD /d 0 >NUL 2>&1
	REG ADD "%%a" /F /V "EnableDIPM" /T REG_DWORD /d 0 >NUL 2>&1
	REG ADD "%%a" /F /V "EnableHDDParking" /T REG_DWORD /d 0 >NUL 2>&1
	FOR /F "tokens=*" %%z IN ("%%a") DO (
		SET STR=%%z
		SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\=!
		ECHO Disabling HIPM and DIPM in !STR!
	)
)

PowerShell "Disable-MMfayrex -MemoryCompression"








rem --------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Memory.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------



for /f "tokens=3*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards" /f "ServiceName" /s^|findstr /i /l "ServiceName"') do (
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TCPNoDelay" /d "1" /t REG_DWORD /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpAckFrequency" /d "1" /t REG_DWORD /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpDelAckTicks" /d "0" /t REG_DWORD /f
) 
FOR /F %%a in ('WMIC PATH Win32_USBHub GET DeviceID^| FINDSTR /L "VID_"') DO (
	REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%a\Device Parameters" /F /V "EnhancedPowerManagementEnabled" /T REG_DWORD /d 0 >NUL 2>&1
	REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%a\Device Parameters" /F /V "AllowIdleIrpInD3" /T REG_DWORD /d 0 >NUL 2>&1
	REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%a\Device Parameters" /F /V "SelectiveSuspendOn" /T REG_DWORD /d 0 >NUL 2>&1
	REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%a\Device Parameters" /F /V "DeviceSelectiveSuspended" /T REG_DWORD /d 0 >NUL 2>&1
	REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%a\Device Parameters" /F /V "SelectiveSuspendEnabled" /T REG_DWORD /d 0 >NUL 2>&1
        REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%a\Device Parameters" /F /V "IdleInWorkingState" /T REG_DWORD /d 0 >NUL 2>&1
)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /v "PeopleBand" /t REG_DWORD /d "0" /f

::DISABLE ACTIVITY FEED
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f

::DISABLE TASK VIEW BUTTON

::DISABLE COMBINE IN TASKBAR ONLY WHEN FULL

::DISABLE WINDOWS TIPS
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableSoftLanding /t REG_DWORD /d 1 /f

::DISABLE FILE EXPLORER ADS
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f





rem --------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > ProcessMitigations.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------











:: disable reserved storage
DISM /Online /Set-ReservedStorageState /State:Disabled
:: disable hibernation and fast startup
powercfg -h off

:: disable unnecessary autologgers
for %%a in (
    "Circular Kernel Context Logger"
    "CloudExperienceHostOobe"
    "DefenderApiLogger"
    "DefenderAuditLogger"
    "Diagtrack-Listener"
    "LwtNetLog"
    "Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace"
    "NetCore"
    "NtfsLog"
    "RadioMgr"
    "RdrLog"
    "ReadyBoot"
    "SpoolerLogger"
    "UBPM"
    "WdiContextLog"
    "WiFiSession"
) do (
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\%%a" /v "Start" /t REG_DWORD /d "4" /f
)
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f



Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DoNotHoldNicBuffers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f



reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMAeroPeekEnabled" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMEnabled" /v "DefaultApplied" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMSaveThumbnailEnabled" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing" /v "DefaultApplied" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v "DefaultApplied" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /v "PeopleBand" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "DiagTrackAuthorization" /t REG_DWORD /d "775" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "DiagTrackStatus" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "UploadPermissionReceived" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "DiagTrackStatus" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "TriggerLatency" /t REG_SZ /d "0.072253" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "HttpRequestLatency" /t REG_SZ /d "1.502418" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\HeartBeats\Default" /v "EventDroppedDecoding" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\HeartBeats\Default" /v "VortexHttpAttempts" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\HeartBeats\Default" /v "EventsUploaded" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\HeartBeats\Default" /v "EventsPersistedCounter" /t REG_DWORD /d "87" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\ControlSet001\Services\SharedAccess\Epoch" /v "Epoch" /t REG_DWORD /d "3694" /f
Reg.exe add "HKLM\Software\TrendMicro\UniClient\1700\UBM" /v "UBMEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\WOW6432Node\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\WOW6432Node\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SevilleEventlogManager" /v "EventsUploaded" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SevilleEventlogManager" /v "EventsDropped" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "MaxTelemetryAllowed" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_SZ /d "00000000" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AccessibilityTemp" /v "narrator" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowSharedUserAppData" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableAutocorrection" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableSpellchecking" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableTextPrediction" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnablePredictionSpaceInsertion" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableDoubleTapSpace" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\TabletTip\1.7" /v "EnableInkingWithTouch" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace" /v "PenWorkspaceAppSuggestionsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /v "DisableAutoplay" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Narrator\NoRoam" /v "RunningState" /t REG_DWORD /d "0" /f

Reg.exe add "HKCU\SOFTWARE\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowStore" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f
REM ;Power Throttling
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f

REM ;Unlocks the ability to modify sleeping CPU cores
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\943c8cb6-6f93-4227-ad87-e9a3feec08d1" /v "Attributes" /t REG_SZ /d "2" /f
REM ;Adds the "Copy To..." ability from Windows 7
Reg.exe add "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To" /ve /t REG_SZ /d "{C2FBB630-2971-11D1-A18C-00C04FD75D13}" /f
REM ;Adds the "Move To..." ability from Windows 7
Reg.exe add "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To" /ve /t REG_SZ /d "{C2FBB631-2971-11D1-A18C-00C04FD75D13}" /f
REM ;Disables unnecessary features in explorer
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "EnableAutoTray" /t REG_DWORD /d "0" /f



rem --------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > VisualSettings.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------



sc stop WinDefend > nul
sc config WinDefend stop= Disabled > nul

sc stop SecurityHealthService > nul
sc config SecurityHealthService stop= Disabled > nul

sc stop WEPHOSTSVC > nul
sc config WEPHOSTSVC stop= Disabled > nul

sc stop WerSvc > nul
sc config WerSvc stop= Disabled > nul

sc stop Wecsvc > nul
sc config Wecsvc stop= Disabled > nul

sc stop FontCache > nul
sc config FontCache stop= Disabled > nul

sc stop StiSvc > nul
sc config StiSvc stop= Disabled > nul

sc stop icssvc > nul
sc config icssvc stop= Disabled > nul

sc stop FontCache3.0.0.0 > nul
sc config FontCache3.0.0.0 stop= Disabled > nul


sc stop perceptionsimulation > nul
sc config perceptionsimulation stop= Disabled > nul

sc stop spectrum > nul 
sc config spectrum stop= Disabled > nul
 

sc stop WSearch > nul
sc config WSearch stop= Disabled > nul

sc stop SecurityHealthService > nul
sc config SecurityHealthService stop= Disabled > nul

sc stop W32Time > nul
sc config W32Time stop= Disabled > nul

sc stop wuauserv > nul
sc config wuauserv stop= Disabled > nul

sc stop WaaSMedicSvc > nul
sc config WaaSMedicSvc stop= Disabled > nul

sc stop LanmanWorkstation > nul
sc config LanmanWorkstation stop= Disabled > nul

sc stop XboxGipSvc > nul
sc config XboxGipSvc stop= Disabled > nul

sc stop xbgm > nul
sc config xbgm stop= Disabled > nul

sc stop XblAuthManager > nul
sc config XblAuthManager stop= Disabled > nul

sc stop XblGameSave > nul
sc config XblGameSave stop= Disabled > nul
  
sc stop XboxNetApiSvc > nul
sc config XboxNetApiSvc stop= Disabled > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v stop /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v stop /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v stop /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v stop /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MessagingService" /v stop /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v stop /t REG_DWORD /d 00000004 /f > nul 

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\OneSyncSvc" /v stop /t REG_DWORD /d 00000004 /f > nul


reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v stop /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpnUserService" /v stop /t REG_DWORD /d 00000004 /f > nul
sc config WalletService stop= Disabled > nul

sc stop wmiApSrv > nul
sc config wmiApSrv stop= Disabled > nul

sc stop TokenBroker > nul
sc config TokenBroker stop= Disabled > nul

sc stop WebClient > nul
sc config WebClient stop= Disabled > nul

sc stop WFDSConMgrSvc > nul
sc config WFDSConMgrSvc stop= Disabled > nul

sc stop SDRSVC > nul
sc config SDRSVC stop= Disabled > nul
 
sc stop WbioSrvc > nul
sc config WbioSrvc stop= Disabled > nul

sc stop FrameServer > nul
sc config FrameServer stop= Disabled > nul
 
sc stop wcncsvc > nul
sc config wcncsvc stop= Disabled > nul

sc stop WalletService > nul


sc stop TabletInputService > nul
sc config TabletInputService stop= Disabled > nul

sc stop TieringEngineService > nul
sc config TieringEngineService stop= Disabled > nul

sc stop SysMain > nul
sc config SysMain stop= Disabled > nul


sc stop SensorDataService > nul
sc config SensorDataService stop= Disabled > nul


sc stop SensorService > nul
sc config SensorService stop= Disabled > nul

sc stop LanmanServer > nul
sc config LanmanServer stop= Disabled > nul



sc stop Spooler > nul
sc config Spooler stop= Disabled > nul

sc stop PrintNotify > nul
sc config PrintNotify stop= Disabled > nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Beep" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CAD" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasAcd" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Rasl2tp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasPppoe" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasSstp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tcpipreg" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wanarpv6" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fileinfo" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FileCrypt" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\AppXSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\DsmSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\TabletInputService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\TokenBroker" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\WpnUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TapiSrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpcMonSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SEMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\p2psvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\p2pimsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\perceptionsimulation" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdatem" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensorService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppReadiness" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NfsClnt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\defragsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedRealitySvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TroubleshootingSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DsSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FrameServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\OSRSS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sedsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TabletInputService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MessagingService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /v "AllowPrelaunch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /v "AllowTabPreloading" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AssignedAccessManagerSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\camsvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\CDPSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\CertPropSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\COMSysApp" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\CoessagingRegistrar" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\defragsvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceInstall" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DevQueryBroker" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DispBrokerDesktopSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DisplayEnhancementService" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DmEnrollmentSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dot3svc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Eaphost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\embeddedmode" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\EntAppSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\FrameServer" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\HvHost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f





:: ENABLE WIFI SERVICES
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\WlanSvc" /v "Start" /t REG_DWORD /d "2" /f >nul 2>&1
sc config LanmanWorkstation start= demand
sc config WdiServiceHost start= demand
sc config NcbService start= demand
sc config ndu start= demand
sc config Netman start= demand
sc config netprofm start= demand
sc config WwanSvc start= demand
sc config DPS start= auto
sc config lmhosts start= auto
sc config RmSvc start= auto
cd %appdata%\WindowsSearch\cleanup
type nul > Processes.txt
rem --------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Processes.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------
type nul > Processes.txt


regsvr32 actxprxy.dll /s
regsvr32 comcat.dll /s
regsvr32 shdoc401.dll /s
regsvr32 shdoc401.dll /i /s
regsvr32 asctrls.ocx /s
regsvr32 oleaut32.dll /s
regsvr32 shdocvw.dll /I /s
regsvr32 shdocvw.dll /s
regsvr32 browseui.dll /s
regsvr32 browseui.dll /I /s
regsvr32 msrating.dll /s
regsvr32 mlang.dll /s
regsvr32 hlink.dll /s
regsvr32 mshtmled.dll /s
regsvr32 urlmon.dll /s
regsvr32 plugin.ocx /s
regsvr32 sendmail.dll /s
regsvr32 scrobj.dll /s
regsvr32 mmefxe.ocx /s
regsvr32 corpol.dll /s
regsvr32 jscript.dll /s
regsvr32 msxml.dll /s
regsvr32 imgutil.dll /s
regsvr32 thumbvw.dll /s
regsvr32 cryptext.dll /s
regsvr32 rsabase.dll /s
regsvr32 inseng.dll /s
regsvr32 iesetup.dll /i /s
regsvr32 cryptdlg.dll /s
regsvr32 actxprxy.dll /s
regsvr32 dispex.dll /s
regsvr32 occache.dll /s
regsvr32 occache.dll /i /s
regsvr32 iepeers.dll /s
regsvr32 urlmon.dll /i /s
regsvr32 cdfview.dll /s
regsvr32 webcheck.dll /s
regsvr32 mobsync.dll /s
regsvr32 pngfilt.dll /s
regsvr32 licmgr10.dll /s
regsvr32 icmfilter.dll /s
regsvr32 hhctrl.ocx /s
regsvr32 tdc.ocx /s
regsvr32 MSR2C.DLL /s
regsvr32 msident.dll /s
regsvr32 msieftp.dll /s
regsvr32 xmsconf.ocx /s
regsvr32 ils.dll /s
regsvr32 msoeacct.dll /s
regsvr32 msdxm.ocx /s
regsvr32 dxmasf.dll /s
regsvr32 l3codecx.ax /s
regsvr32 acelpdec.ax /s
regsvr32 mpg4ds32.ax /s
regsvr32 voxmsdec.ax /s
regsvr32 danim.dll /s
regsvr32 Daxctle.ocx /s
regsvr32 lmrt.dll /s
regsvr32 datime.dll /s
regsvr32 dxtrans.dll /s
regsvr32 dxtmsft.dll /s
regsvr32 WEBPOST.DLL /s
regsvr32 WPWIZDLL.DLL /s
regsvr32 POSTWPP.DLL /s
regsvr32 CRSWPP.DLL /s
regsvr32 FTPWPP.DLL /s
regsvr32 FPWPP.DLL /s
regsvr32 WUAPI.DLL /s
regsvr32 WUAUENG.DLL /s
regsvr32 ATL.DLL /s
regsvr32 WUCLTUI.DLL /s
regsvr32 WUPS.DLL /s
regsvr32 WUWEB.DLL /s
regsvr32 wshom.ocx /s
regsvr32 wshext.dll /s
regsvr32 vbscript.dll /s
regsvr32 scrrun.dll mstinit.exe /setup /s
regsvr32 msnsspc.dll /SspcCreateSspiReg /s
regsvr32 msapsspc.dll /SspcCreateSspiReg /s
regsvr32 /s urlmon.dll /s
regsvr32 /s mshtml.dll /s
regsvr32 /s shdocvw.dll /s
regsvr32 /s browseui.dll /s
regsvr32 /s jscript.dll /s
regsvr32 /s vbscript.dll /s
regsvr32 /s scrrun.dll /s
regsvr32 /s msxml.dll /s
regsvr32 /s actxprxy.dll /s
regsvr32 /s softpub.dll /s
regsvr32 /s wintrust.dll /s
regsvr32 /s dssenh.dll /s
regsvr32 /s rsaenh.dll /s
regsvr32 /s gpkcsp.dll /s
regsvr32 /s sccbase.dll /s
regsvr32 /s slbcsp.dll /s
regsvr32 /s cryptdlg.dll /s
regsvr32 /s schannel.dll /s
regsvr32 /s oleaut32.dll /s
regsvr32 /s ole32.dll /s
regsvr32 /s shell32.dll /s
regsvr32 /s initpki.dll /s
regsvr32 /s msscript.ocx /s
regsvr32 /s dispex.dll
regsvr32 jscript.dll /s
regsvr32 wuapi.dll /s
regsvr32 wups.dll /s
regsvr32 wuaueng.dll /s
regsvr32 wucltui.dll /s
regsvr32 wuweb.dll /s
regsvr32 msxml.dll /s
regsvr32 msxml2.dll /s
regsvr32 msxml3.dll /s
regsvr32 urlmon.dll /s




rem --------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Registration.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------















ipcofig /flushdns







rem --------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > NetCache.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------
:: Telementry
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
takeown /f "%temp%" /r /d y & RD /S /Q %temp% & MKDIR %temp% & takeown /f "%temp%" /r /d y & takeown /f "C:\Windows\Temp" /r /d y & RD /S /Q C:\Windows\Temp & MKDIR C:\Windows\Temp & takeown /f "C:\Windows\Temp" /r /d y
netsh advfirewall firewall add rule name="Block Windows Telemetry" dir=in action=block remoteip=134.170.30.202,137.116.81.24,157.56.106.189,184.86.53.99,2.22.61.43,2.22.61.66,204.79.197.200,23.218.212.69,65.39.117.23,65.55.108.23,64.4.54.254 enable=yes > nul
netsh advfirewall firewall add rule name="Block NVIDIA Telemetry" dir=in action=block remoteip=8.36.80.197,8.36.80.224,8.36.80.252,8.36.113.118,8.36.113.141,8.36.80.230,8.36.80.231,8.36.113.126,8.36.80.195,8.36.80.217,8.36.80.237,8.36.80.246,8.36.113.116,8.36.113.139,8.36.80.244,216.228.121.209 enable=yes > nul
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "MaxTelemetryAllowed" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "LimitEnhancedDiagnosticDataWindowsAnalytics" /t REG_DWORD /d "0" /f
echo %c_green%Disable Microsoft Edge's scheduled tasks.
schtasks /Change /Disable /TN "\MicrosoftEdgeUpdateTaskMachineCore" >nul 2>nul
schtasks /Change /Disable /TN "\MicrosoftEdgeUpdateTaskMachineUA" >nul 2>nul
echo %c_green%Done.
echo %c_green%Configure edge settings incase the user reinstalls it..
reg add "HKLM\Software\Policies\Microsoft\Windows\EdgeUI" /v "DisableMFUTracking" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main" /v "AllowPrelaunch" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\EdgeUpdate" /v "DoNotUpdateToEdgeWithChromium" /t REG_DWORD /d "0" /f
echo %c_green%Done.
echo %c_green%Removing edge from Program Files (x86)...
rd /s /q "C:\Program Files (x86)\Microsoft"
echo %c_green%Done.
echo %c_green%Removing edge's registry keys / leftovers...
reg delete "HKLM\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" /f >nul 2>nul
reg delete "HKLM\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge Update" /f >nul 2>nul
reg delete "HKLM\Software\Classes\MSEdgeHTM" /f >nul 2>nul
reg delete "HKLM\System\CurrentControlSet\Services\EventLog\Application\edgeupdate" /f >nul 2>nul
reg delete "HKLM\System\CurrentControlSet\Services\EventLog\Application\edgeupdatem" /f >nul 2>nul
reg delete "HKLM\Software\WOW6432Node\Clients\StartMenuInternet\Microsoft Edge" /f >nul 2>nul
reg delete "HKLM\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe" /f >nul 2>nul
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe" /f >nul 2>nul
reg delete "HKLM\Software\WOW6432Node\Microsoft\EdgeUpdate" /f >nul 2>nul
reg delete "HKLM\Software\WOW6432Node\Microsoft\Edge" /f >nul 2>nul
reg delete "HKLM\Software\Clients\StartMenuInternet\Microsoft Edge" /f >nul 2>nul
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Device Metadata" /f >nul 2>nul
del %temp%\*.tmp /f /s /q
del %windir%\prefetch\*.* /f /s /q
del %windir%\temp\*.* /f /s /q
rmdir /s /q %windir%\temp\
echo Cleaning Windows...
del c:\*.tmp /f /s /q
del d:\*.tmp /f /s /q

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "1" /f

sc config "InstallService" start= disabled
sc config "wlidsvc" start= disabled
sc config "TokenBroker" start= disabled
sc config "LicenseManager" start= disabled
sc config "FileInfo" start= disabled
sc config "iphlpsvc" start= demand
sc config "FileCrypt" start= disabled
sc config "AppMgmt" start= disabled

reg add "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppIDSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d "Off" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
reg delete "HKLM\System\CurrentControlSet\Services\Sense" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "SecurityHealth" /f
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecHealthUI.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
install_wim_tweak /o /c Windows-Defender /r
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d 0 /f
reg delete "HKLM\System\CurrentControlSet\Services\SecurityHealthService" /f

del c:\temp\*.tmp /f /s /q
del d:\temp\*.tmp /f /s /q
del c:\windows\prefetch\*.* /f /s /q
del d:\windows\prefetch\*.* /f /s /q
del c:\windows\temp\*.* /f /s /q
del d:\windows\temp\*.* /f /s /q
del c:\win98\temp\*.* /f /s /q
del d:\win98\temp\*.* /f /s /q
del c:\winnt\temp\*.* /f /s /q
del d:\winnt\temp\*.* /f /s /q
del c:\winme\temp\*.* /f /s /q
del d:\winme\temp\*.* /f /s /q
rmdir /s /q c:\windows\temp\
rmdir /s /q d:\windows\temp\
del C:\"Documents and Settings"\%username%\Cookies\*.* /f /s /q
del D:\"Documents and Settings"\%username%\Cookies\*.* /f /s /q
del c:\"documents and settings"\%username%\Recent\*.* /f /s /q
del D:\"documents and settings"\%username%\Recent\*.* /f /s /q
del C:\"documents and settings"\%username%\"local settings"\temp\*.* /f /s /q
del D:\"documents and settings"\%username%\"local settings"\temp\*.* /f /s /q
rmdir /s /q c:\"documents and settings"\%username%\"local settings"\temp\
rmdir /s /q d:\"documents and settings"\%username%\"local settings"\temp\
del C:\"documents and settings"\%username%\"Local Settings"\"temporary internet files"\*.* /f /s /q
del d:\"documents and settings"\%username%\"local settings"\"temporary internet files"\*.* /f /s /q
del c:\"documents and settings"\%username%\"application data"\microsoft\office\recent\*.* /f /s /q
del d:\"documents and settings"\%username%\"application data"\microsoft\office\recent\*.* /f /s /q
rmdir /s /q C:\"documents and settings"\%username%\"local settings"\"temporary internet files"\
rmdir /s /q D:\"documents and settings"\%username%\"local settings"\"temporary internet files"\
rd /s /q %windir%\SoftwareDistribution\Download
rd /s /q %windir%\SoftwareDistribution\Download
rmdir /s /q C:\ProgramData\Microsoft\Windows\WER\Reportqueue
ipconfig /flushdns
del *.log /a /s /q /f
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y


rem --------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Finalizer.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------


sfc/scannow
compact /compactos:always
Dism /Online /Cleanup-Image /StartComponentCleanup
reagentc /enable
powershell.exe %appdata%/WindowsSearch/cleanup.ps1
rem --------------------------------------------------------------------------
cd %appdata%\WindowsSearch\cleanup
type nul > Fixes.txt
timeout /t 100 /nobreak >nul
rem ------------------------------------------------------------------------
