$continue = $true

while ($continue)
{
    $input = Read-Host "Do you want to continue? (Type 'exit' to quit)"
    
    if ($input -eq 'exit')
    {
        $continue = $false
    }
    else
    {
        Write-Host "You entered: $input"
    }
}
