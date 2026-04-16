# URL del CMD original (sin modificar)
$cmdUrl = "https://raw.githubusercontent.com/pcastroc08/ElevenToolbox_activador/main/HWID_Activation.cmd"

# Ruta temporal donde se guardará
$cmdPath = "$env:TEMP\HWID.cmd"

# Descargar el CMD desde GitHub
Invoke-WebRequest -Uri $cmdUrl -OutFile $cmdPath

# Ejecutar el CMD como administrador
Start-Process cmd.exe -ArgumentList "/c `"$cmdPath`"" -Verb RunAs
