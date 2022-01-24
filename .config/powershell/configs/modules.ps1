Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme hunk
Import-Module Terminal-Icons


Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

