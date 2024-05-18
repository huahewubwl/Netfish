$exePath = "C:\Application\Netfish\main1.cmd"
$regKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
Set-ItemProperty -Path $regKey -Name "Netfish" -Value $exePath