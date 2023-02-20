oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\spaceship.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons

Set-Alias -Name grep -Value Select-String

Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineKeyHandler -Key Tab -Function ForwardChar
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key Ctrl+f -Function ForwardChar

# Import-Module -Name mati