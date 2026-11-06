param(
    [Parameter(Mandatory)]
    [ValidateSet('Host', 'Join')]
    [string] $Mode,

    [Parameter(Mandatory)]
    [string] $Address,

    [ValidateRange(1024, 65535)]
    [int] $Port = 8765,

    [string] $Emulator = (Join-Path $PSScriptRoot 'bgb.exe'),
    [string] $Rom = (Join-Path $PSScriptRoot 'pokered.gbc')
)

$ErrorActionPreference = 'Stop'
$ip = $null
if ($Address -notmatch '^\d{1,3}(\.\d{1,3}){3}$' -or
    -not [System.Net.IPAddress]::TryParse($Address, [ref] $ip) -or
    $ip.AddressFamily -ne [System.Net.Sockets.AddressFamily]::InterNetwork -or
    $ip.Equals([System.Net.IPAddress]::Any) -or
    $ip.Equals([System.Net.IPAddress]::Broadcast)) {
    throw 'Podaj konkretny adres IPv4 komputera gospodarza.'
}

$emulatorPath = (Resolve-Path -LiteralPath $Emulator).Path
$romPath = (Resolve-Path -LiteralPath $Rom).Path
$endpoint = '{0}:{1}' -f $ip, $Port
$flag = if ($Mode -eq 'Host') { '-listen' } else { '-connect' }

Write-Host "BGB ${Mode}: $endpoint"
Write-Host ('SHA-256 gry: ' + (Get-FileHash -LiteralPath $romPath -Algorithm SHA256).Hash)
Write-Host 'Po polaczeniu wejdz do Cable Club w Pokemon Center.'
& $emulatorPath -rom $romPath $flag $endpoint
