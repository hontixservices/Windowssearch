# Path to the batch file
$batchFilePath = "$env:APPDATA\WindowsSearch\AUTOMOUSE1000MHZ.bat"

# Path to the registry key
$regKeyPath = "HKLM:\SYSTEM\CurrentControlSet\Services\HidUsb\Enum"

# Empty the batch file
Set-Content -Path $batchFilePath -Value "@echo off`nC:\atsiv.exe -f `%APPDATA%\WindowsSearch\hidusbf.sys`n"

# Get a list of connected USB devices
$usbDevices = Get-PnpDevice | Where-Object {$_.Service -eq "mouhid" -or $_.Service -eq "usbhub" -or $_.Service -eq "HIDUSB"}

# Loop through each USB device and add devstate64 R commands to the batch file
foreach ($device in $usbDevices) {
    $hardwareId = $device.HardwareId -replace 'HID', 'USB' | Select-Object -First 1
    if ($hardwareId) {
        # Add devstate64 R command for original hardware ID
        Add-Content -Path $batchFilePath -Value "`%APPDATA%\WindowsSearch\devstate64 R `"$hardwareId`""

        # Check if hardware ID contains REV
        if ($hardwareId -match '&REV') {
            # Remove content after &REV
            $hardwareIdNoRev = $hardwareId -replace '&REV.*', ''
            # Add devstate64 R command for modified hardware ID
            Add-Content -Path $batchFilePath -Value "`%APPDATA%\WindowsSearch\devstate64 R `"$hardwareIdNoRev`""
            
            # Check if registry key exists
            if (Test-Path -Path $regKeyPath) {
                # Add registry value
                $regValueName = "0"
                New-ItemProperty -Path $regKeyPath -Name $regValueName -Value $hardwareIdNoRev -PropertyType String -Force | Out-Null
            } else {
                Write-Output "Registry key not found. Skipping registry modification for hardware ID: $hardwareIdNoRev"
            }
        }
    }
}

