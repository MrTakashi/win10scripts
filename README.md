# win10scripts

This repository contains my scripts tested with Windows 10 21H1 (19043)

## Scripts

| Script                                                                                                                     | Discription |
|----------------------------------------------------------------------------------------------------------------------------| ------ |
| [win10.user.settings.cmd](https://github.com/MrTakashi/win10scripts/blob/main/win10.user.settings.cmd)                     | Setup personal explorer and windows settings
| [win10.disable.data.collection.cmd](https://github.com/MrTakashi/win10scripts/blob/main/win10.disable.data.collection.cmd) | Disable data collection services


## Usage

Run cmd.exe with administrators rights and execute the command below

```
curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10.user.settings.cmd | %SystemRoot%\System32\cmd.exe
curl https://raw.githubusercontent.com/MrTakashi/win10scripts/main/win10.disable.data.collection.cmd | %SystemRoot%\System32\cmd.exe
```
