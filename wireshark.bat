chcp 65001
cd /d "%~dp0"
cd wireshark
tshark -f "port 这里填上学校网络登陆网站的端口通常是80" -i WLAN -w capture.cap