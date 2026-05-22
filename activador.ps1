$cmdUrl = "https://raw.githubusercontent.com/massgravel/Microsoft-Activation-Scripts/master/MAS/Separate-Files-Version/Activators/HWID_Activation.cmd"
$cmdPath = "$env:TEMP\HWID.cmd"
Invoke-WebRequest -Uri $cmdUrl -OutFile $cmdPath
Start-Process cmd.exe -ArgumentList "/c `"$cmdPath`"" -Verb RunAs
