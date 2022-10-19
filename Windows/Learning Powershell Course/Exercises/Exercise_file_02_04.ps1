##Pipe Formating
get-service |format-list displayname, status, requiredservices
get-service |format-table displayname, status, requiredservices |sort-object -property status 
get-service |sort-object -property status | format-list displayname, status, requiredservices 

###Pipe OutPut
get-service |out-file c:\services.txt
get-service |export-csv c:\services.csv ####-Delimiter ";"