WScript.Sleep 8000
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1000
WshShell.SendKeys "{UP}"
WScript.Sleep 1000
WshShell.SendKeys "{ENTER}"
