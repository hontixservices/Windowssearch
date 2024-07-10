@echo off
reg add "HKLM\SOFTWARE\Microsoft\TouchPrediction" /v "Importance" /t REG_SZ /d "Low" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\ApplicationServiceElastic" /v "Importance" /t REG_SZ /d "Low" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\ApplicationServiceHighPriElastic" /v "Importance" /t REG_SZ /d "Critical" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\ApplicationServiceHighPriority" /v "Importance" /t REG_SZ /d "Critical" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\ApplicationServiceRemote" /v "Importance" /t REG_SZ /d "High" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\AppToAppTarget" /v "Importance" /t REG_SZ /d "High" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\BackgroundAudioPlayer" /v "Importance" /t REG_SZ /d "Critical" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\BackgroundCachedFileUpdater" /v "Importance" /t REG_SZ /d "Low" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\BackgroundTaskCompletion" /v "Importance" /t REG_SZ /d "Low" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\BackgroundTaskDebug" /v "Importance" /t REG_SZ /d "Critical" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\BackgroundTransfer" /v "Importance" /t REG_SZ /d "Low" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\BackgroundTransferNetworkState" /v "Importance" /t REG_SZ /d "High" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\Balloon" /v "Importance" /t REG_SZ /d "Critical" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\CalendarProviderAsChild" /v "Importance" /t REG_SZ /d "High" /f

reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\CallingEvent" /v "Importance" /t REG_SZ /d "High" /f
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\ContinuousBackgroundExecution" /v "Importance" /t REG_SZ /d "MediumHigh" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\CortanaSpeechBackground" /v "Importance" /t REG_SZ /d "Medium" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\CreateProcess" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\DefaultModernBackgroundTask" /v "Importance" /t REG_SZ /d "Low" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\DefaultPPLE" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\EmCreateProcess" /v "CPU" /t REG_SZ /d "SoftCapLowBackgroundBegin" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\EmCreateProcessNormalPriority" /v "Importance" /t REG_SZ /d "Medium" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\EmptyHost" /v "Importance" /t REG_SZ /d "VeryLow" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\EmptyHostHighPriority" /v "Importance" /t REG_SZ /d "Low" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\FileProviderTarget" /v "Importance" /t REG_SZ /d "High" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\ForegroundAgent" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\ForegroundCachedFileUpdater" /v "Importance" /t REG_SZ /d "High" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\ForegroundTaskCompletion" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\Frozen" /v "Importance" /t REG_SZ /d "VeryLow" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\GenericExtendedExecution" /v "Importance" /t REG_SZ /d "Medium" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\GeofenceTask" /v "Importance" /t REG_SZ /d "Medium" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\HighPriorityBackgroundAgent" /v "Importance" /t REG_SZ /d "VeryHigh" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\HighPriorityBackgroundDemoted" /v "Importance" /t REG_SZ /d "Low" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\HighPriorityBackgroundTransfer" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\IoTStartupTask" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\JumboForegroundAgent" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaBackgroundTaskCompletion" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaDefaultModernBackgroundTask" /v "Importance" /t REG_SZ /d "Low" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaPrelaunchForeground" /v "Importance" /t REG_SZ /d "Lowest" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaUiDebugModeForeground" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaUiFrozen" /v "Importance" /t REG_SZ /d "VeryLow" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaUiFrozenDNCS" /v "Importance" /t REG_SZ /d "Low" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaUiFrozenDNK" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaUiFrozenHighPriority" /v "Importance" /t REG_SZ /d "StartHost" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaUiModernForeground" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaUiModernForegroundLarge" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaUiPaused" /v "Importance" /t REG_SZ /d "VeryLow" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaUiPausedDNK" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaUiPausedHighPriority" /v "Importance" /t REG_SZ /d "VeryHigh" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LmaUiPausing" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LongRunningBluetooth" /v "Importance" /t REG_SZ /d "MediumHigh" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LongRunningControlChannel" /v "Importance" /t REG_SZ /d "High" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\LongRunningSensor" /v "Importance" /t REG_SZ /d "MediumHigh" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\MediaProcessing" /v "Importance" /t REG_SZ /d "Low" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\OemBackgroundAgent" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\OemTask" /v "Importance" /t REG_SZ /d "High" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\PendingDefaultPPLE" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\PiP" /v "Importance" /t REG_SZ /d "CriticalNoUi" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\PreinstallTask" /v "Importance" /t REG_SZ /d "High" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\PrelaunchForeground" /v "Importance" /t REG_SZ /d "Lowest" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\PushTriggerTask" /v "Importance" /t REG_SZ /d "High" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\ResourceIntensive" /v "Importance" /t REG_SZ /d "Low" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\ShareDataPackageHost" /v "Importance" /t REG_SZ /d "High" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\ShortRunningBluetooth" /v "Importance" /t REG_SZ /d "High" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\TaskCompletionHighPriority" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiComposer" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiDebugModeForeground" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiForegroundDNK" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiFrozen" /v "Importance" /t REG_SZ /d "VeryLow" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiFrozenDNCS" /v "Importance" /t REG_SZ /d "Low" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiFrozenDNK" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiFrozenHighPriority" /v "Importance" /t REG_SZ /d "StartHost" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiLockScreen" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiModernForeground" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiModernForegroundExtended" /v "Importance" /t REG_SZ /d "CriticalNoUi" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiModernForegroundLarge" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiOverlay" /v "Importance" /t REG_SZ /d "High" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiPaused" /v "Importance" /t REG_SZ /d "VeryLow" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiPausedDNK" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiPausedHighPriority" /v "Importance" /t REG_SZ /d "StartHost" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiPausing" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiPausingLowPriority" /v "Importance" /t REG_SZ /d "StartHost" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiShellCustom1" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiShellCustom2" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiShellCustom3" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\PolicySets\UiShellCustom4" /v "Importance" /t REG_SZ /d "Critical" /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0" /v "CapPercentage" /t REG_DWORD /d 100 /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0" /v "SchedulingType" /t REG_DWORD /d 3 /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused" /v "CapPercentage" /t REG_DWORD /d 100 /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused" /v "SchedulingType" /t REG_DWORD /d 3 /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull" /v "CapPercentage" /t REG_DWORD /d 100 /f >nul
REG ADD "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull" /v "SchedulingType" /t REG_DWORD /d 3 /f >nul