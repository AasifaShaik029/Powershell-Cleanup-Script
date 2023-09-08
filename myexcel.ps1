Import-Module ImportExcel
$excelFilePath = "C:\Users\Aasifa\OneDrive\Documents\aasifa.xlsx"
$searchValue = "ayman2"
$newval = "Bangalore"
$excelData = Import-Excel -Path $excelFilePath
foreach ($row in $excelData) {
   
    if ($row.NAME -eq $searchValue) {
        
        $row.ADDRESS = $newval
    }
}
Write-Host "done"