;/*
;===========================================
;  微信多开
;
;  脚本作者 : random
;  更新时间 : 2021-08-09
;
;  用法:  (需要 AHK v1.1.31+)
;  根据需求更改myfile.ini
;
;===========================================
;*/

IniRead, OutputVar, myfile.ini, section, key
IniRead, OutputVar1, myfile.ini, section, key1
SetRegView %OutputVar%
RegRead, OutputVar2, HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\WeChat, InstallLocation
;MsgBox %OutputVar2%
;MsgBox %OutputVar%
;MsgBox %OutputVar1%
Loop, %OutputVar1% {
Run, %comspec% /c `start /d %OutputVar2% WeChat.exe
}
ExitApp
