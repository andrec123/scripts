# Function to perform IP sweep
function Invoke-IpSweep {
    param(
        [string]$subnet
    )

    # Construct the IP range from the subnet
    $ipRange = 1..254 | ForEach-Object { "$subnet.$_" }

    # Loop through each IP address and send a single ping request
    foreach ($ip in $ipRange) {
        $result = Test-Connection -ComputerName $ip -Count 1 -ErrorAction SilentlyContinue

        if ($result) {
            Write-Host "$ip is online"
        } else {
            Write-Host "$ip is offline"
        }
    }
}

# Get subnet from user input
$subnet = Read-Host "Enter the subnet (e.g., 192.168.1)"

# Call the function
Invoke-IpSweep -subnet $subnet
