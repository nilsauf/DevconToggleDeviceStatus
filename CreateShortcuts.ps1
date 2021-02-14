function set-shortcut {
    [cmdletbinding()]
    Param (
        [string]$Name, 
        [string]$workDir
    )

    $WshShell = New-Object -comObject WScript.Shell
    $strDesktop = $WshShell.SpecialFolders("Desktop")
    $Shortcut = $WshShell.CreateShortcut($strDesktop + "\" + $Name + ".lnk")
    $Shortcut.TargetPath = "powershell.exe"
    $Shortcut.Arguments = " -File ""$workDir\$Name.ps1"""
    $Shortcut.WorkingDirectory = $workDir
    $Shortcut.Save()
}

$commandPath = $MyInvocation.MyCommand.Path
$workDir = Split-Path $commandPath -Parent;

set-shortcut "EnableDevice" $workDir
set-shortcut "DisableDevice" $workDir