# Set the threshold for disk space usage in kilobytes
$THRESHOLD_KB = 1024  # Adjust this value as needed

# Define the directory to check
$DIRECTORY_TO_CHECK = "C:\cleanupfolder"

# Get the total size of files in the directory in kilobytes
$totalSizeKB = (Get-ChildItem -Path $DIRECTORY_TO_CHECK -File | Measure-Object -Property Length -Sum).Sum / 1KB

# Check if the total size exceeds the threshold
if ($totalSizeKB -gt $THRESHOLD_KB) {
    Write-Host "Disk space usage in $DIRECTORY_TO_CHECK exceeds the threshold of $THRESHOLD_KB KB."

    # List the files that will be deleted (optional)
    Get-ChildItem -Path $DIRECTORY_TO_CHECK -File | ForEach-Object {
        Write-Host "Deleting $($_.FullName)"
    }

    # Delete the files
    Get-ChildItem -Path $DIRECTORY_TO_CHECK -File | Remove-Item -Force

    # Delete empty folders
    Get-ChildItem -Path $DIRECTORY_TO_CHECK -Directory | Where-Object { (Get-ChildItem -Path $_.FullName -File).Count -eq 0 } | Remove-Item -Force

    Write-Host "Cleanup complete."
} else {
    Write-Host "Disk space usage in $DIRECTORY_TO_CHECK is within the threshold."
}
