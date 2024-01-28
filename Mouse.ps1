Start-Sleep -Seconds 30  # Adjust the sleep duration as needed

while ($true) {
    # Check if a USB mouse is connected
    $usbMouse = Get-WmiObject Win32_PnPEntity | Where-Object { $_.Description -like '*HID-compliant mouse*' } # Edit to match your mouse name seen in Device Manager

    # Find the touchpad device
    $touchpad = Get-PnpDevice | Where-Object { $_.Description -like '*HID-compliant touch pad*' } # Edit to match your touchpad name seen in Device Manager

    if ($touchpad -eq $null) {
        Write-Host "Touchpad not found."
    } else {
        if ($usbMouse) {
            # Disable the touchpad
            Disable-PnpDevice -InstanceId $touchpad.InstanceId -Confirm:$false
            Write-Host "Touchpad disabled."
        } else {
            # Enable the touchpad
            Enable-PnpDevice -InstanceId $touchpad.InstanceId -Confirm:$false
            Write-Host "Touchpad enabled."
        }
    }

    # Sleep for 3 seconds before checking again
    Start-Sleep -Seconds 3
}
