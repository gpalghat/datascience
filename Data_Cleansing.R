#library(dplyr)
library(downloader)
#library(xml2)
#require(XML)
library(data.table)
file_dir = "C:/Users/gpalghat006/Downloads/"
#file_name = "getdata_data_ss06hid.csv"
#df <- read.csv(paste0(file_dir, file_name))
#dfd <- select(df, RT, VAL, FES)
#dfdf <- filter(dfd, VAL >= 24)
#print(dfdf %>% group_by(VAL)  %>% summarize(total = n()))
#print(dfd %>% group_by(FES)  %>% summarize(total = n()))

#file_name2 = "getdata_data_DATA.gov_NGAP2.xlsx"
#dat <- readxl::read_xlsx(paste0(file_dir,file_name2))
#dfd2 <-select(df2, X__7: X__15)
#dfdf2 <- mutate(dfd2, ID = row_number())
#dat <- filter(dfdf2, ID >=18 & ID<=23 )
#print(sum(dat$Zip*dat$Ext,na.rm=T))

#url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml", "C:/Users/gpalghat006/Downloads/restaurants.xml")
#file_name3 = "restaurants.xml"
#dat <- read_xml("url")
#dat<- xmlParse("C:/Users/gpalghat006/Downloads/restaurants.xml")
#recs <- xmlToList(dat)
#dat2 <- xmlToDataFrame(nodes=getNodeSet(dat,"//response"))[c("row")]
#dat3 <- xmlToDataFrame(nodes=getNodeSet(dat,"//response/row/row"))
#dat4 <- filter(dat3, zipcode == 21231)
#count(dat4)

#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", "C:/Users/gpalghat006/Downloads/dlfile.csv" )
#DT <- fread("C:/Users/gpalghat006/Downloads/dlfile.csv", sep = ",", header= TRUE)

#sapply(split(DT$pwgtp15,DT$SEX),mean)

#start_time <- Sys.time()
#print(sapply(split(DT$pwgtp15,DT$SEX),mean))
#end_time <- Sys.time()
#print(paste("sapply",end_time - start_time))


#start_time <- Sys.time()
#print(tapply(DT$pwgtp15,DT$SEX,mean))
#end_time <- Sys.time()
#print(paste("tapply",end_time - start_time))





funs <- list(
  fun1 = function() { sapply(split(DT$pwgtp15,DT$SEX),mean) },
  fun2 = function() { tapply(DT$pwgtp15,DT$SEX,mean) },
  fun3 = function() { mean(DT$pwgtp15,by=DT$SEX) },
  fun4 = function() { DT[,mean(pwgtp15),by=SEX] },
  fun5 = function() { rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2] },
  fun6 = function() { mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15) }
)

## set to FALSE if you want to remove verbose logs below
debug <- TRUE

fastest <- NULL
min <- .Machine$integer.max

lapply(funs, function(FUN) {
  if (debug) print(FUN)
  st <- system.time(x <- try(FUN(), silent = TRUE))
  if (inherits(x, "try-error")) {
    if(debug) print("run-time error, skipping..")  
  } else {
    et <- st[3]
    if (et < min) {
      min <<- et
      fastest <<- FUN
    }
    if (debug) {
      print(paste("elapsed time:", sprintf("%.10f", et)))
      print(x)      
    }
  }
})

## The function 'mean(DT$pwgtp15,by=DT$SEX)' should be the fastest one.
print("The fastest calculation is:")
print(fastest)
msg("with running time of", sprintf("%.10f", min), "seconds")


#start_time <- Sys.time()
#print(mean(DT[DT$SEX==1,]$pwgtp15))
#end_time <- Sys.time()
#print(paste("mean1",end_time - start_time))

#start_time <- Sys.time()
#print(mean(DT$pwgtp15,by=DT$SEX))
#end_time <- Sys.time()
#print(paste("mean2",end_time - start_time))

#start_time <- Sys.time()
#print(DT[,mean(pwgtp15),by=SEX])
#end_time <- Sys.time()
#print(paste("mean3",end_time - start_time))

#start_time <- Sys.time()
#print(rowMeans(DT)[DT$SEX==1])
#print(rowMeans(DT)[DT$SEX==2])
#end_time <- Sys.time()
#print(paste("rowmeans",end_time - start_time))

