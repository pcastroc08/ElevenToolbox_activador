$cmdUrl = "https://raw.githubusercontent.com/pcastroc08/ElevenToolbox_activador/main/HWID_Activation.cmd"
$cmdPath = "$env:TEMP\HWID.cmd"
Invoke-WebRequest -Uri $cmdUrl -OutFile $cmdPath
Start-Process cmd.exe -ArgumentList "/c `"$cmdPath`"" -Verb RunAs
