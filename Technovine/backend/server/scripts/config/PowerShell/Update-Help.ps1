$ErrorActionPreference="SilentlyContinue"
$ErrorView="CategoryView"

Update-Help -ErrorVariable $PSUpdateErrors

if ( "$PSUpdateErrors" -ne "" ) {
	Write-Host -Object "$PSUpdateErrors" | Tee-Object -Append -FilePath "..\logs\Build-Logs\PowerShell-Errors.log"
}