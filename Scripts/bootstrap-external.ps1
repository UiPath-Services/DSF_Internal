Add-MpPreference -ExclusionPath "C:\Temp"

try{
$TargetFile = "C:\Temp\dsf-provisioner-1.0.0 Setup.exe"
$ShortcutFile = "$env:Public\Desktop\Staging Provision.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()
$ "C:\Temp\dsf-provisioner-1.0.0 Setup.exe"
}catch{ Write-Host "script not found"}


try{
  & "C:\Temp\sap.ps1"
}catch{ Write-Host "sap script not found"}
