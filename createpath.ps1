Param (
  $Path
)
New-Item $Path # Creates a new file at $Path.
Write-Host "File $Path was created"