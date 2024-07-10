@echo off
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowLinguisticDataCollection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowHardwareKeyboardTextSuggestions" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowTextInputSuggestionUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowKeyboardTextSuggestions" /t REG_DWORD /d "0" /f
REM ; Input Personalization
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