@echo off

rem Delete CoalescingTimerInterval value from various registry keys
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control" /v "CoalescingTimerInterval" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control" /v "CoalescingTimerInterval" /f
