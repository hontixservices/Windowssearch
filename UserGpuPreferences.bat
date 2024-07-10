@echo off
rem Termed, Benchmarking
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "NV_SYNC_FRAME_RATE_OVERRIDE" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "Nvidia_InterpolateFramerate" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "NV_PresentInterval" /t REG_DWORD /d 3 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_PREEMPTION_MODE" /t REG_DWORD /d 3 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_FRAME_LATENCY_WAITABLE_OBJECT" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_SWAP_CHAIN_WAITABLE_OBJECT" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_FORCE_FLIP_DISCARD" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_SWAP_CHAIN_SCALE" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_SWAP_CHAIN_ALLOW_MODE_SWITCH" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_SWAP_CHAIN_FULLSCREEN_FLIP_MODE" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D12_ENABLE_UNSAFE_COMMAND_BUFFER_REUSE" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D12_ENABLE_RUNTIME_DRIVER_OPTIMIZATIONS" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D12_RESOURCE_ALIGNMENT" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_USE_OPTIMIZED_SWAP_CHAIN" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_PRESENT_RESTART" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_CAPTURE_ON_FLIP" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D12_MULTITHREADED" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D11_MULTITHREADED" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D12_DEFERRED_CONTEXTS" /t REG_DWORD /d 1 /f
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D11_DEFERRED_CONTEXTS" /t REG_DWORD /d 1 /f
