# Powershell Enable/Disable Device
A set of windows powershell scripts to enable/disable a device from device manager

## Preparation
1. List all devices by calling `Get-PnpDevice` in PowerShell
2. Search the name of the device you want to enable / disable
3. Replace all `XXX` in the files by the name of the device
4. Use `CreateShortcuts.ps1` to create two shortcuts on the desktop to enable and disable the choosen device

## Usage Note
The scripts need to be started with admin rights

