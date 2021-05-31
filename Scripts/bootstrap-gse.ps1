Add-MpPreference -ExclusionPath "C:\Temp"

$TargetFile = "$env:SystemRoot\System32\cmd.exe"
$ShortcutFile = "$env:Public\Desktop\ProvisionRobot.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Arguments = " /C C:\Temp\folderSelector.exe"
$Shortcut.Save()

try{
  & "C:\Temp\git.ps1"
}catch{ Write-Host "script not found"}
finally { Remove-Item -Path C:\Temp\git.ps1 -Force }
