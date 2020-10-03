cls

$uptime_dir = "C:\Users\tvanveen\scripts\powershell"
New-Alias ut $uptime_dir\uptime.ps1

function which($name)
{
    Get-Command $name | Select-Object -ExpandProperty Definition
}
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
