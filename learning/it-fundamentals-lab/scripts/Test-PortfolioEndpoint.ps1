param(
    [Parameter(Mandatory = $false)]
    [string]$Url = "https://github.com/rd4028/visualization-studio-portfolio"
)

$uri = [Uri]$Url
$hostName = $uri.Host
$port = if ($uri.Port -gt 0) { $uri.Port } elseif ($uri.Scheme -eq "https") { 443 } else { 80 }

Write-Host "Target URL: $Url"
Write-Host "Host: $hostName"
Write-Host "Port: $port"
Write-Host ""

Write-Host "DNS check"
try {
    $addresses = [System.Net.Dns]::GetHostAddresses($hostName)
    $addresses |
        Select-Object -First 5 |
        ForEach-Object {
            [PSCustomObject]@{
                Host = $hostName
                Address = $_.IPAddressToString
            }
        } |
        Format-Table -AutoSize
} catch {
    Write-Host "DNS lookup failed: $($_.Exception.Message)"
}

Write-Host ""
Write-Host "TCP connectivity check"
try {
    $client = [System.Net.Sockets.TcpClient]::new()
    $connect = $client.BeginConnect($hostName, $port, $null, $null)
    $success = $connect.AsyncWaitHandle.WaitOne(5000, $false)

    if ($success) {
        $client.EndConnect($connect)
    }

    [PSCustomObject]@{
        ComputerName = $hostName
        RemotePort = $port
        TcpTestSucceeded = $client.Connected
    } | Format-List

    $client.Close()
} catch {
    Write-Host "TCP test failed: $($_.Exception.Message)"
}

Write-Host ""
Write-Host "HTTP response check"
try {
    $elapsed = Measure-Command {
        $response = Invoke-WebRequest -Uri $Url -Method Head -UseBasicParsing -ErrorAction Stop
    }

    [PSCustomObject]@{
        StatusCode = $response.StatusCode
        StatusDescription = $response.StatusDescription
        ResponseTimeMs = [math]::Round($elapsed.TotalMilliseconds, 0)
        Server = $response.Headers["Server"]
    } | Format-List
} catch {
    Write-Host "HTTP request failed: $($_.Exception.Message)"
}
