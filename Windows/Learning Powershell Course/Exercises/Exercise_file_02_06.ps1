Get-Service 

Get-Service -ComputerName webserver

Get-Service -ComputerName dcdsc, webserver |Format-Table machinename, name, status

Get-Service -ComputerName dcdsc, webserver |Sort-Object -property machinename | Format-Table machinename, name, status

