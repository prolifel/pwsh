oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\spaceship.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons

Set-Alias -Name grep -Value Select-String
Set-Alias -Name g -Value git
Set-Alias -Name gti -Value git

Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineKeyHandler -Key Tab -Function ForwardChar
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key Ctrl+f -Function ForwardChar

# remove gc alias
del alias:gc -Force
del alias:gp -Force

Import-Module -Name utils/mati
Import-Module -Name utils/ga
Import-Module -Name utils/gc
Import-Module -Name utils/gp
Import-Module -Name utils/gf
Import-Module -Name utils/gpl
Import-Module -Name utils/touch
Import-Module -Name utils/top
Import-Module -Name utils/pg
Import-Module -Name utils/e # explorer
Import-Module -Name utils/g # git

Invoke-Expression (& { (zoxide init powershell | Out-String) })