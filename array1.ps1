$myArray = @()

# Add items to the array using +=
$myArray += "Item 1"
$myArray += "Item 2"
$myArray += "Item 3"

# Display the contents of the array
Write-Host "Contents of myArray:"
foreach ($item in $myArray) {
    Write-Host $item
}