$sum=0
for ( $i=0; $i -lt $args.count; $i++){

$sum+=$args[$i]


}
Write-Host "$sum"