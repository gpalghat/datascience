complete <- function(directory, id=1:332){
  
  #oldwd = getwd()
  #setwd(paste("./",directory,sep=""))
  file_obs <- NULL
  file_count <- NULL
  file_read <- NA
  for(x in id){
    file_read <- read.csv(paste(sprintf("%03d",x), ".csv", sep = ""))
    file_obs <- subset(file_read,  nitrate != "NA" 
                       & sulfate != "NA" & ID==x)
    file_count <- rbind(file_count , data.frame(id=x, nobs=nrow(file_obs)))
  }
  #setwd(oldwd)
  file_county <-file_count
  return(file_county)
} 



corr <- function(directory,threshold = 0){
  file_cor <- NULL
  file_count <- NULL
  file_cor_vect <- NULL
  file_count_sub <- NULL
  x <- NULL
  
  oldwd = getwd()
  setwd(paste("./",directory,sep=""))
  
  file_countx <- complete(directory, id=1:332)
  #print(complete(directory, id=1:332))
  #print("********")
  #print(file_countx)
  #print("*********")
  
  file_count_sub <- subset(file_countx, nobs > threshold)
  
  #print(file_count_sub)
  
  for (x in file_count_sub$id){
    #print(paste("x=",x))
    
    file_read <- read.csv(paste(sprintf("%03d",x), ".csv", sep = ""), header = TRUE, comment.char="")
    file_obs <- subset(file_read,  nitrate != "NA" 
                       & sulfate != "NA" & ID==x)
    #file_cor <-cor.test(file_obs$sulfate, file_obs$nitrate, use = "complete.obs")
    file_cor <-cor(file_obs$sulfate, file_obs$nitrate, use = "complete.obs")
    #file_cor <-cor(file_obs$sulfate, file_obs$nitrate, use="everything")
    file_cor_vect <- rbind( file_cor_vect, c(id=x, file_cor))
  }
  
  setwd(oldwd)
  return(file_cor_vect)
}

setwd("C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera")
file_countx = NULL
cr <- NULL
#threshold <-0

#cr<-corr("specdata", 150)
#print(head(cr))
#print(summary(cr))
#print(length(cr))
#print("*******************")

#cr<-corr("specdata", 400)
#print(head(cr))
#print(summary(cr))
#print(length(cr))
#print("*******************")

#cr<-corr("specdata", 5000)
#print(head(cr))
#print(summary(cr))
#print(length(cr))
#print("*******************")

#cr<-corr("specdata")
#print(head(cr))
#print(summary(cr))
#print(length(cr)) #should be 323, but prints 646
#print("*******************")


#cr <- corr("specdata")                
#cr <- sort(cr)                
#set.seed(868)                
#out <- round(cr[sample(abs(length(cr)/2), 5)], 4)
#print(out)

#cr <- corr("specdata", 129)                
#cr <- sort(cr)                
#n <- abs(length(cr)/2)                
#set.seed(197)                
#out <- c(n, round(cr[sample(n, 5)], 4))
#print(out)

cr <- corr("specdata", 2000)                
n <- abs(length(cr)/2)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))