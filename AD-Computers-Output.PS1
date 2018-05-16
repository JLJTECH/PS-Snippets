# Query Active Directory filter output based on OU. Pipe output to CSV File. 
Get-AdComputer -SearchBase 'ou=xxx OU,dc=xxx,dc=xxx' -Filter * -Property * | Select-Object CN, DistinguishedName | where-object { $_.DistinguishedName -notlike "*OU=xxx OU*, *OU=xxx OU*" } | Export-Csv -Path C:\xxx.csv -NoTypeInformation -Encoding UTF8 
