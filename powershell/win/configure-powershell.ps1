# Requires -RunAsAdministrator
# run each section manually as needed


Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

# setup nuget
Install-PackageProvider Nuget –Force
Exit

# base powershell modules
Install-Module –Name PowerShellGet –Force
Exit

Update-Module -Name PowerShellGet
Exit

# install chocolately
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# config chocolately
Get-PackageProvider -Name chocolatey -Force
Install-Package -Name Chocolatey -Force -ProviderName chocolatey
Set-PackageSource chocolatey -ProviderName Chocolatey -Trusted

# maintain choco
choco install chocolatey-core.extension
choco upgrade chocolatey-core.extension

# maintain powershell
$PSVersionTable.PSVersion
choco install powershell -y
choco upgrade powershell -y
$PSVersionTable.PSVersion

# powershell unit testing 
choco install Pester -y

# maintain powershell core
choco install powershell-core -y
choco upgrade powershell-core -y
