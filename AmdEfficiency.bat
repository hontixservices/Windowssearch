@echo off
powercfg -setacvalueindex 95533644-e700-4a79-a56c-a89e8cb109d9 238c9fa8-0aad-41ed-83f4-97be242c8f20 25dfa149-5dd1-4736-b5ab-e8a37b5b8187 0
Powercfg -setactive scheme_current
powercfg -setdcvalueindex 95533644-e700-4a79-a56c-a89e8cb109d9 238c9fa8-0aad-41ed-83f4-97be242c8f20 25dfa149-5dd1-4736-b5ab-e8a37b5b8187 0
Powercfg -setactive scheme_current
powercfg /setACvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setDCvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setactive SCHEME_CURRENT
Powercfg -setdcvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100
Powercfg -setactive scheme_current
Powercfg -setdcvalueindex scheme_current sub_processor PROCTHROTTLEMIN 50
Powercfg -setactive scheme_current
Powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100
Powercfg -setactive scheme_current
Powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
Powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_none DEVICEIDLE 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor IDLEPROMOTE 98
powercfg -setacvalueindex scheme_current sub_processor IDLEDEMOTE 98
powercfg -setacvalueindex scheme_current sub_processor IDLECHECK 20000
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 1
powercfg /setactive SCHEME_CURRENT