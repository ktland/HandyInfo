Get-WindowsFeature

Get-WindowsFeature -Name Web-Server 

Get-WindowsFeature -Name Web-Server | Install-WindowsFeature

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