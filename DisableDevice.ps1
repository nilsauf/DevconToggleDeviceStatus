$DeviceName = "XXX"

Get-PnpDevice | Where-Object { $PSItem.FriendlyName -like $DeviceName -and $PSItem.Status -eq "OK" } | Disable-PnpDevice -Confirm:$false