[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
chcp 65001

New-Alias -Name vi -Value nvim
New-Alias -Name grep -Value rg
New-Alias -Name exp -Value explorer
New-Alias -Name touch -Value New-Item

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/mytheme.omp.json" | Invoke-Expression
