@echo off
chcp 65001
cls
cd /d "%~dp0"
taskkill -IM Reminder.exe -F
timeout 5
rmdir /s /q C:\Application\Netfish
powershell -File "Auto_Bremove.ps1"
#reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f

