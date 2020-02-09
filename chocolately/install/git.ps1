# git install

choco install git.install --params "/GitAndUnixToolsOnPath /NoGitLfs /SChannel /NoAutoCrlf /NoShellIntegration" -y

Install-Module Posh-Git -Scope CurrentUser
# open vscode powershell profile add: Import-Module Posh-Git
Write-Output "Add Posh-Git to profile: Import-Module Posh-Git"
code $profile