Add-MpPreference -ExclusionPath "C:\Temp"

try{
$TargetFile = "C:\Temp\Staging External - Folder Selector UI Provision Setup 1.0.0"
$ShortcutFile = "$env:Public\Desktop\Staging External - Robot.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()
}catch{ Write-Host "script not found"}


try{
  & "C:\Temp\sap.ps1"
}catch{ Write-Host "sap script not found"}
