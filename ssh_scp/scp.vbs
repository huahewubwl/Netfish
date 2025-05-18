Dim WshShell
Set WshShell=WScript.CreateObject("WScript.Shell") 
WshShell.Run "cmd.exe"
WScript.Sleep 2000 
WshShell.SendKeys "scp C:\Application\Netfish\wireshark\capture.cap root@上传数据包的服务器IP:/root/netfish/"
WshShell.SendKeys "{ENTER}"
WScript.Sleep 2000
WshShell.SendKeys "上传数据包的服务器的密码"
WshShell.SendKeys "{ENTER}"
