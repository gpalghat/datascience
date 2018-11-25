complete <- function(directory, id=1:332){
  
  oldwd <- getwd()
  setwd(paste("./",directory,sep=""))
  file_obs <- NULL
  file_count <- NULL
  file_read <- NA
  for(x in id){
    file_read <- read.csv(paste(sprintf("%03d",x), ".csv", sep = ""))
    file_obs <- subset(file_read,  nitrate != "NA" 
                       & sulfate != "NA" & ID==x)
    #print(file_obs)
    #print(c(x, nrow(file_obs)))
    file_count <- rbind(file_count , c(id=x, nobs=nrow(file_obs)))
  }
  #print(file_count)
  setwd(oldwd)
  return(file_count)
} 

setwd("C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera")


#complete("specdata", 1)

#complete("specdata", c(2, 4, 8, 10, 12))

#complete("specdata", 30:25)

#complete("specdata", 3)

#complete("specdata", c(6, 10, 20, 34, 100, 200, 310))

#complete("specdata", 54)

#set.seed(42)
#cc <- complete("specdata", 332:1)
#use <- sample(332, 10)
#print(cc[use, "nobs"])

