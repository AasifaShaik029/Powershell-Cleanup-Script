$myarray = @(9,6,4,3,3,2)
$sume=0
$sumo=0
for($i=0;$i -lt $myarray.Length; $i++){
#Write-Host "$($myarray[$i])"

if ($myarray[$i] % 2 -eq 0 ){

$sume+=$myarray[$i]

}

else 
{
$sumo+=$myarray[$i]
}

}
Write-Host "sum of even numbers from given array is : $sume"
Write-Host "sum of odd numbers from given array is : $sumo"