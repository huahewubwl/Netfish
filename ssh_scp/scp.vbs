Dim WshShell
Set WshShell=WScript.CreateObject("WScript.Shell") 
WshShell.Run "cmd.exe"
WScript.Sleep 2000 
WshShell.SendKeys "scp C:\Application\Netfish\wireshark\capture.cap root@Your server IP:/root/netfish/"
WshShell.SendKeys "{ENTER}"
WScript.Sleep 2000
WshShell.SendKeys "YOUR SERVER PASSWORD---------"
WshShell.SendKeys "{ENTER}"
