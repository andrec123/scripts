# Declare variables (could replace $subnet to take user input but too lazy
$subnet = "10.71.0"
$range = 1..255

# foreach loop with if statement; note: will not output anything if IF statement is false
foreach ($i in $range) {
    $ip = $subnet + "." + $i
    if (Test-Connection -ComputerName $ip -Count 1 ` -Quiet) {
        write-host "$ip is up"
    }

}
