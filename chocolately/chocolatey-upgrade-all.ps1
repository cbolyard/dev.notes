$chocopath = (Get-Package chocolatey | Where-Object{$_.Name -eq "chocolatey"} | Select-Object @{N="Source";E={((($a=($_.Source -split "\\"))[0..($a.length - 2)]) -join "\"),"Tools\chocolateyInstall" -join "\"}} | Select-Object -ExpandProperty Source)
& $chocopath "upgrade all -y"
