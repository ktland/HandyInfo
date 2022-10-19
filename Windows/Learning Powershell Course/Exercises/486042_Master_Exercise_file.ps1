##Pipe Formating
get-service |format-list *
get-service |format-table displayname, status, requiredservices |sort-object -property status 
get-service |sort-object -property status | format-list displayname, status, requiredservices 

###Pipe OutPut
get-service |out-file c:\services.txt
get-service |export-csv c:\services.csv ####-Delimiter ";"

###Pipe Gridview
get-service |out-gridview
get-service |format-table displayname, status, requiredservices |out-gridview
get-service |select-object displayname, status, requiredservices | out-gridview
get-service |select-object * | out-gridview

#PowerShell Leveraging the ComputerName Parameter
Get-Service 
Get-Service -ComputerName webserver, dcdsc |select-object * |Out-GridView
Get-Service -ComputerName dcdsc, webserver |Format-Table machinename, name, status
Get-Service -ComputerName dcdsc, webserver |Sort-Object -property machinename | Format-Table machinename, name, status

#Installing Window Roles and Features
Get-WindowsFeature
Get-WindowsFeature -Name Web-Server 
Get-WindowsFeature -Name Web-Server | Install-WindowsFeature

#Creating a Backup Policy for Windows Server 2012 R2
#Get-WindowsFeature -Name Windows-Server-Backup | Install-WindowsFeature
$policy = New-WBPolicy  
$fileSpec = New-WBFileSpec -FileSpec C:\important
Add-WBFileSpec -Policy $policy -FileSpec $filespec  
$backupLocation = New-WBBackupTarget -VolumePath E:
Add-WBBackupTarget -Policy $policy -Target $backupLocation  
Set-WBSchedule -Policy $policy 09:00  
Set-WBPolicy -Policy $policy
$BUpolicy = Get-WBPolicy
Start-WBBackup -Policy $BUpolicy