# win10scripts

This repository contains my scripts tested with Windows 10 21H1 (19043)

## Scripts

| Script                                                                                                                                   | Description                                  |
|------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------|
| [win10.user.settings.cmd](https://github.com/MrTakashi/win10scripts/blob/main/win10.user.settings.cmd)                                   | Setup personal explorer and windows settings |
| [win10.disable_diag_track_service.cmd](https://github.com/MrTakashi/win10scripts/blob/main/win10.disable_diag_track_service.cmd)         | Disable data collection service              |
| [win10.disable_windows_search_service.cmd](https://github.com/MrTakashi/win10scripts/blob/main/win10.disable_windows_search_service.cmd) | Disable Windows Search                       |   
| [win10.disable_windows_update_service.cmd](https://github.com/MrTakashi/win10scripts/blob/main/win10.disable_windows_update_service.cmd) | Disable Windows Update                       |  
|                                                                                                                                          |                                              |
| [get.activated.win.cmd](https://github.com/MrTakashi/win10scripts/blob/main/get.activated.win.cmd)                                       | Microsoft Activation Scripts                 |                 
| [office 2024 settings.cmd](https://github.com/MrTakashi/win10scripts/blob/main/office/office_2024_install_my_settings.cmd)               | Office 2024 settings                         |                


## Usage

Run cmd.exe with administrators rights and execute the command below

### Windows Tools
**win10.user.settings.cmd**
```
curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10.user.settings.cmd | %SystemRoot%\System32\cmd.exe
```
**Disable service: DiagTrack**
```
curl https://github.com/MrTakashi/win10scripts/blob/main/win10.disable_diag_track_service.cmd | %SystemRoot%\System32\cmd.exe
```
**Disable service: Windows Search**
```
curl https://github.com/MrTakashi/win10scripts/blob/main/win10.disable_windows_search_service.cmd | %SystemRoot%\System32\cmd.exe
```
**Disable service: Windows Update**
```
curl https://github.com/MrTakashi/win10scripts/blob/main/win10.disable_windows_update_service.cmd | %SystemRoot%\System32\cmd.exe
```

### Office Tools
**office 2024 settings**
```
curl https://github.com/MrTakashi/win10scripts/blob/main/office/office_2024_install_my_settings.cmd | %SystemRoot%\System32\cmd.exe
```

### Windows&Office Tools
**Microsoft Activation Scripts (MAS)**
```
curl https://github.com/MrTakashi/win10scripts/blob/main/get.activated.win.cmd | %SystemRoot%\System32\cmd.exe
```
