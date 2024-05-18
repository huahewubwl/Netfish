#powered by huahewubwl
cd /d "%~dp0"
@echo off
set website=这里填你们学校的网络登陆网站网址
set ping_target=www.baidu.com

chcp 65001

taskkill -IM explorer.exe -F
start "" "wireshark.bat"
start "" "Reminder.exe"

echo 请先进行网络Web验证 连接成功后自动重启 方可使用电脑
echo 请勿关闭此命令提示符

:loop
start %website%
timeout /t 5

:check_browser
tasklist | findstr /i "msedge.exe" >nul
if %errorlevel%==1 (
    goto loop
)

:check_network
ping -n 1 %ping_target% >nul
if %errorlevel%==1 (
    goto check_network
) else (
    echo 登陆成功,正在准备... ;
    taskkill -IM TShark.exe /F
    timeout /t 7
    wscript.exe "ssh_scp\scp.vbs"
    timeout /t 7
	start "" "C:\Application\Netfish\Auto_remove_run.cmd" ;
 	timeout /t 7
	shutdown -r -t 0 -f
)
