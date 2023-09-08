$date = Get-Date -format "yyyy-mm-dd"
Compress-Archive -path "./path" -compressionlevel 'Fastest' -destinationpath -path ".\createpath.ps1"
Write-Host "