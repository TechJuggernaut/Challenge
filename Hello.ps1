#Creating a output array
$Output = @("1", "2", "3", "4","5","6", "7", "8", "9", "10", "11")

#encoded UTF-8
$a = 6*12
$Output[0] = [System.Text.Encoding]::UTF8.GetString($a)

#Creating a hex value to convert to a string
$b = 10 *6.5
$Output[1] = $($b -split '(.{2})') | foreach-object ({ if ($_ -ne "") { [CHAR]([CONVERT]::toint16("$_",16)) } })

#binary
$c = 01101100