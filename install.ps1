$link = "$link = "https://github.com/Arkromin/Installer/releases/latest/download/DiscordInstallerCli.exe""

$outfile = "$env:TEMP\DiscordInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
