Add-MpPreference -ExclusionPath "C:\Temp"

try{
$TargetFile = "C:\Temp\dsf-provisioner-1.0.0 Setup.exe"
$ShortcutFile = "$env:Public\Desktop\Staging Provision.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()
}catch{ Write-Host "script not found"}


try{
$TargetFile = "C:\Temp\Staging External - Folder Selector UI Provision Setup 1.0.0"
$ShortcutFile = "$env:Public\Desktop\Staging External - Robot.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()
}catch{ Write-Host "script not found"}

try{
$TargetFile = "C:\Program Files (x86)\Postman\Postman.exe"
$ShortcutFile = "$env:Public\Desktop\Postman.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()
}catch{ Write-Host "script not found"}


try{
  & "C:\Temp\sap.ps1"
}catch{ Write-Host "script not found"}
