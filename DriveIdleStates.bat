@echo off
setlocal EnableDelayeDexpansion
REM Disable USB Selective Suspend.
For /f "tokens=*" %%d in ('Powercfg -DeviceQuery Wake_Programmable') Do (
Set "DeviceName=%%d"
echo Disable Power Saving For ^| !DeviceName!
Powercfg -DeviceDisableWake "!DeviceName!"
)
REM Disable PowerSavings On Drives
For /f "Tokens=*" %%i In ('Reg.exe Query "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "StorPort" ^| Findstr "StorPort"') Do Reg.exe Add "%%i" /v "EnableIdlePowerManagement" /t REG_DWORD /d "0" /f >nul
For /f "Tokens=*" %%i In ('Wmic Path Win32_PnPEntity Get DeviceID ^| Findstr "USB\VID_"') Do (
Reg.exe Add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f
Reg.exe Add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f
Reg.exe Add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /t REG_DWORD /d "0" /f
Reg.exe Add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f
Reg.exe Add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f
Reg.exe Add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /t REG_DWORD /d "0" /f
Reg.exe Add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /t REG_DWORD /d "0" /f
) >nul
REM Disable Network Adapters PowerSaving Options.
PowerShell -executionpolicy bypass -command "&{$PnPValue=24;$Adapter=Get-NetAdapter | Where-Object {($_.Status -eq 'Up') -and ($_.PhysicalMediaType -eq '802.3')};$KeyPath='HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\';foreach ($Entry in (Get-ChildItem $KeyPath -ErrorAction SilentlyContinue).Name) {If ((Get-ItemProperty REGISTRY::$Entry).DriverDesc -eq $Adapter.InterfaceDescription) {$Value=(Get-ItemProperty REGISTRY::$Entry).PnPCapabilities;If ($Value -ne $PnPValue) {Set-ItemProperty -Path REGISTRY::$Entry -Name PnPCapabilities -Value $PnPValue -Force;Disable-PnpDevice -InstanceId $Adapter.PnPDeviceID -Confirm:$false;Enable-PnpDevice -InstanceId $Adapter.PnPDeviceID -Confirm:$false;$Value=(Get-ItemProperty REGISTRY::$Entry).PnPCapabilities};If ($Value -eq $PnPValue) {Write-Host 'Has Been Disabled'} else {Write-Host 'Is Not Working'}}}}"
REM Disable USB Root Hubs PowerSaving
PowerShell -Command "$powerMgmt = Get-WmiObject MSPower_DeviceEnable -Namespace root\wmi; foreach ($p in $powerMgmt) { $p.enable = $False; $p.psbase.put(); Write-Host ('Disabled Power Saving For | ' + $p.InstanceName) }"
EndLocal

