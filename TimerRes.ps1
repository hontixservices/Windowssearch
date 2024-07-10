# Function to set timer resolution
function Set-TimerResolution {
    $signature = @"
[DllImport("ntdll.dll", SetLastError = true)]
public static extern uint NtSetTimerResolution(uint DesiredResolution, bool SetResolution, out uint CurrentResolution);
"@
    
    try {
        $type = Add-Type -MemberDefinition $signature -Name Win32Utils -Namespace NtApiSet -PassThru
        $desiredResolution = 5070  # 0.5 milliseconds in 100 nanosecond units
        $currentResolution = 0

        $result = $type::NtSetTimerResolution($desiredResolution, $true, [ref]$currentResolution)
        
        if ($result -eq 0) {
            Write-Host "Timer resolution set to 0.5 milliseconds."
        } else {
            Write-Host "Failed to set timer resolution. Error code: $result" -ForegroundColor Red
        }
    } catch {
        Write-Host "An error occurred while setting timer resolution: $_" -ForegroundColor Red
    }
}

# Infinite loop
while ($true) {
    # Check Windows version
    $windowsVersion = [System.Environment]::OSVersion.Version

    # If Windows 10, set timer resolution
    if ($windowsVersion.Major -eq 10) {
        Set-TimerResolution
    }
    # If Windows 11, exit
    elseif ($windowsVersion.Major -eq 11) {
        Write-Host "This script does not need to run on Windows 11. Exiting..."
        exit
    }
    # For other versions of Windows, display message and exit
    else {
        Write-Host "Unsupported Windows version. Exiting..."
        exit
    }

    # Wait for some time before checking again (for example, 1 minute)
    Start-Sleep -Seconds 60
}
