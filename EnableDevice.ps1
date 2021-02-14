$DeviceName = "XXX"

Get-PnpDevice | Where-Object { $PSItem.FriendlyName -like $DeviceName -and $PSItem.Status -eq "OK" -or $PSItem.Status -eq "Error" } | Enable-PnpDevice -Confirm:$false