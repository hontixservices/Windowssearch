# Check if the script is running as an Administrator
$adminTest = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
if (-not $adminTest) {
    # Relaunch the script with Administrator privileges
    Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Define directory
$originalDirectory = "$env:APPDATA\WindowsSearch"


Write-Host "Creating directories..."

# Create the directory if it doesn't exist
if (!(Test-Path $directory)) { 
    New-Item -Path $directory -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null 
}

# Unzip the nvidiaProfileInspector.zip file
Expand-Archive "$directory\nvidiaProfileInspector.zip" -DestinationPath "$directory\nvidiaProfileInspector\" > $null 2>&1 

Start-Sleep -Seconds 10

# Remove the zip file
Remove-Item -Path "$directory\nvidiaProfileInspector.zip" -Force -ErrorAction SilentlyContinue

# Apply nip file
Write-Host "Optimizing nip..."
& "$directory\nvidiaProfileInspector\nvidiaProfileInspector.exe" "$directory\VortexOS_0-Delay.nip" #-silent /f >nul 2>&1

# Modify registry keys
$registryKeys = Invoke-Expression -Command 'reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "NVIDIA" | findstr "HKEY"'
foreach ($key in $registryKeys) {
    Reg Add "$key" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f > $null
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XEN_Hue" /t REG_DWORD /d "80000001" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XEN_RGB_Gamma_G" /t REG_DWORD /d "80000001" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XALG_Color_Range" /t REG_BINARY /d "0000000000000000" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XEN_Color_Range" /t REG_DWORD /d "80000001" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XEN_RGB_Gamma_R" /t REG_DWORD /d "80000001" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XEN_RGB_Gamma_B" /t REG_DWORD /d "80000001" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XEN_Contrast" /t REG_DWORD /d "80000001" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XEN_Brightness" /t REG_DWORD /d "80000001" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XEN_Saturation" /t REG_DWORD /d "80000001" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_VAL_Noise_Reduce" /t REG_DWORD /d "00000000" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XEN_Noise_Reduce" /t REG_DWORD /d "80000001" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_Global_VAL_SuperResolution" /t REG_DWORD /d "00000004" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_VAL_Edge_Enhance" /t REG_DWORD /d "00000000" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XEN_Edge_Enhance" /t REG_DWORD /d "80000001" /f > $null 2>&1
    Reg.exe Add "$key" /v "_User_SUB0_DFP0_XALG_Cadence" /t REG_BINARY /d "0000000000000000" /f > $null 2>&1
    Reg.exe Add "$key" /v "RmProfilingAdminOnly" /t REG_DWORD /d "00000000" /f > $null 2>&1
}
Reg.exe Add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmProfilingAdminOnly" /t REG_DWORD /d "00000000" /f > $null 2>&1
Reg.exe Add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "NvDevToolsVisible" /t REG_DWORD /d "1" /f > $null 2>&1
