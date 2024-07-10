# Set execution policy to unrestricted
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

# Modify registry settings
foreach ($line in (reg query "HKLM\Software\Microsoft\Windows NT\CurrentVersion\NetworkCards" /k /v /f "Description" /s /e | findstr /ri "REG_SZ")) {
    $line = ($line -split 'REG_SZ')[1].Trim()
    foreach ($result in (reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}" /s /f $line /d | findstr /C:"HKEY")) {
        reg add $result /v "MIMOPowerSaveMode" /t REG_SZ /d "3" /f > $null 2>&1
        reg add $result /v "PowerSavingMode" /t REG_SZ /d "0" /f > $null 2>&1
        reg add $result /v "EnableGreenEthernet" /t REG_SZ /d "0" /f > $null 2>&1
        reg add $result /v "*EEE" /t REG_SZ /d "0" /f > $null 2>&1
        reg add $result /v "EnableConnectedPowerGating" /t REG_DWORD /d "0" /f > $null 2>&1
        reg add $result /v "EnableDynamicPowerGating" /t REG_SZ /d "0" /f > $null 2>&1
        reg add $result /v "EnableSavePowerNow" /t REG_SZ /d "0" /f > $null 2>&1
        reg add $result /v "PnPCapabilities" /t REG_DWORD /d "24" /f > $null 2>&1
        reg add $result /v "*NicAutoPowerSaver" /t REG_SZ /d "0" /f > $null 2>&1
        reg add $result /v "ULPMode" /t REG_SZ /d "0" /f > $null 2>&1
        reg add $result /v "EnablePME" /t REG_SZ /d "0" /f > $null 2>&1
        reg add $result /v "AlternateSemaphoreDelay" /t REG_SZ /d "0" /f > $null 2>&1
        reg add $result /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f > $null 2>&1
    }
}

# Set additional network adapter properties
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*EEE" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*FlowControl" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*IPChecksumOffloadIPv4" -RegistryValue "3"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*InterruptModeration" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*ModernStandbyWoLMagicPacket" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*LsoV2IPv4" -RegistryValue "1"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*LsoV2IPv6" -RegistryValue "1"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*NumRssQueues" -RegistryValue "2"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*PMARPOffload" -RegistryValue "1"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*PMNSOffload" -RegistryValue "1"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*PriorityVLANTag" -RegistryValue "1"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*RSS" -RegistryValue "1"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*WakeOnMagicPacket" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*WakeOnPattern" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*ReceiveBuffers" -RegistryValue "2048"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*TransmitBuffers" -RegistryValue "2048"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*TCPChecksumOffloadIPv4" -RegistryValue "3"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*TCPChecksumOffloadIPv6" -RegistryValue "3"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*UDPChecksumOffloadIPv4" -RegistryValue "3"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*UDPChecksumOffloadIPv6" -RegistryValue "3"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "DMACoalescing" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "EEELinkAdvertisement" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "EnablePME" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "ITR" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "ReduceSpeedOnPowerDown" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "WaitAutoNegComplete" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "WakeOnLink" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "AdvancedEEE" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "EnableGreenEthernet" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "GigaLite" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "PowerSavingMode" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "S5WakeOnLan" -RegistryValue "0"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "WolShutdownLinkSpeed" -RegistryValue "2"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "LogLinkStateEvent" -RegistryValue "16"
Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "WakeOnMagicPacketFromS5" -RegistryValue "0"

# Set display values for specific advanced properties
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Ultra Low Power Mode" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "System Idle Power Saver" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Selective Suspend" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Selective Suspend Idle Timeout" -DisplayValue "60"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Link Speed Battery Saver" -DisplayValue "Disabled"
