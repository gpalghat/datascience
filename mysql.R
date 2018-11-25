
#install.packages("RMySQL")
#library(RMySQL)

#mydb = dbConnect(MySQL(), user='gpalghat', password='PwC@123456', dbname='employees', host='localhost')
#table_names = dbListTables(mydb)
#list_field_names = dbListFields(mydb, 'employees')
#dbSendQuery(mydb, 'drop table if exists some_table, some_other_table')
#dbWriteTable(mydb, name='table_name', value=data.frame.name)
#result_set = dbSendQuery(mydb, "SELECT * FROM employees.employees limit 100;")
#transfer_2_r = fetch(result_set, n=-1)
#print(transfer_2_r)

#DIFFERENT DB# ucscDb = dbConnect(MySQL(), user='genome', host='genome-mysql.soe.ucsc.edu')
#ucscDb = dbConnect(MySQL(), user='genome', host='genome-mysql.cse.ucsc.edu')
#ucscResult <- dbGetQuery(ucscDb, 'show databases;')
#print(ucscResult)

#ucscDb = dbConnect(MySQL(), user='genome', db='hg19', host='genome-mysql.cse.ucsc.edu')
#ucscAllTables <- dbListTables(ucscDb)
#ucscNumTables <- length(ucscAllTables)
#print(ucscNumTables)
#print(ucscAllTables[1:5])
#print(dbListFields(ucscDb,'affyU133Plus2'))
#print(dbGetQuery(ucscDb, 'select count(*) from affyU133Plus2'))
#ucscaffyData <- dbReadTable(ucscDb,'affyU133Plus2' )
#print((head(ucscaffyData)))

#ucscQuery <- dbSendQuery(ucscDb, 'Select * from affyU133Plus2 where misMatches between 1 and 3')
#affyMis <- fetch(ucscQuery)
#print(quantile(affyMis$misMatches))
#affyMisSmall <- fetch(ucscQuery, n=10)
#print(dim(affyMisSmall))

###### IMPORTANT HOUSEKEEPING #####
#dbClearResult(ucscQuery) #IMPORTANT - clear query so that it does not remain in server
#dbDisconnect(ucscDb) #IMPORTANT - Close connections when you complete work
###################################