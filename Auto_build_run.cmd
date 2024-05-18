@echo off
chcp 65001
cls
	cd /d "%~dp0"
	mkdir C:\Application\Netfish
	xcopy  /s /y  *.* C:\Application\Netfish
	REM copy TranslucentTB-portable-x64 C:\Application\Netfish
	powershell -File "Auto_build_2.ps1"
	echo 成功添加注册表启动项




