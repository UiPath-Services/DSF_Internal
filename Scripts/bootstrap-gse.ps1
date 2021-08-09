Add-MpPreference -ExclusionPath "C:\Temp"

$TargetFile = "$env:SystemRoot\System32\cmd.exe"
$ShortcutFile = "$env:Public\Desktop\Cloud Provision.exe"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Arguments = " /C C:\Temp\Cloud Folder Selector UI Provision Setup 1.0.0.exe"
$Shortcut.Save()

try{
  & "C:\Temp\sap.ps1"
}catch{ Write-Host "script not found"}
