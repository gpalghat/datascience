pollutantmean <- function(directory, pollutant, id=1:332){
  #setwd(directory)
  final_output = NULL
  for(x in id){
    file_read <- read.csv(paste(sprintf("%03d",x), ".csv", sep = ""))
    sulphate_mean <- mean(file_read$sulfate, na.rm=TRUE)
    nitrate_mean <- mean(file_read$nitrate, na.rm=TRUE)
    file_output <- data.frame(id=id,sulphate_mean=sulphate_mean, nitrate_mean=nitrate_mean )
    final_output <- final_output+file_output
  }
  grand_mean_sulfate <- mean(final_output$sulfate, na.rm=TRUE)
  grand_mean_nitrate <- mean(final_output$nitrate, na.rm=TRUE)
}

#file_name = 

#directory <- readline("What is the directory where the file resides?")
#id <- readline("what is the monitoring ID")
#pollutant <- readline("what is the pollutant value (N or S)?")

#pollutantmean(directory, pollutant, id)
#names(file_read)
#file_with_no_na <- subset(file_read, file_read$sulphate!="NA" 
#                         && file_read$nitrate != "NA")

directory <- "C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/specdata"
old_wd <- getwd()
#setwd(directory)
id <- 1
file_read <- read.csv(paste(sprintf("%03d",id), ".csv", sep = ""))

sulphate_mean <- mean(filename$sulfate, na.rm=TRUE)
nitrate_mean <- mean(filename$nitrate, na.rm=TRUE)
file_output <- data.frame(id=id,sulphate_mean=sulphate_mean, nitrate_mean=nitrate_mean )



pollutantmean <- function(directory, pollutant, id=1:332){
  
  final_output <- NULL
  master_file <- NULL
  #file_output <- NA
  file_read <- NA
  for(x in id){
    file_read <- read.csv(paste(sprintf("%03d",x), ".csv", sep = ""))
    master_file <- rbind(master_file, file_read)
  }
  master_file_sulfate <- subset(master_file, id=id & sulfate != "NA")
  master_file_nitrate <- subset(master_file, id=id & nitrate != "NA")
  grand_mean_sulfate <- mean(master_file_sulfate$sulfate, na.rm=TRUE)
  grand_mean_nitrate <- mean(master_file_nitrate$nitrate, na.rm=TRUE)
  if(pollutant == 'sulfate'){
    print(paste("Grand Mean Sulphate = ", grand_mean_sulfate))
  }
  else if (pollutant == 'nitrate'){
    print(paste("Grand Mean Nitrate = " , grand_mean_nitrate))
  }
  else {
    print("Pollutant not correct")
  }
} 

#pollutantmean("C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/specdata", "sulphate", 1:332)

final_output <- NULL
master_file <- NULL
file_output <- NA
file_read <- NA
id <- NA
id <- 23
for(x in id){
  file_read <- read.csv(paste(sprintf("%03d",x), ".csv", sep = ""))
  master_file <- rbind(master_file, file_read)
  #sulfate_mean <- mean(file_read$sulfate, na.rm=TRUE)
  #nitrate_mean <- mean(file_read$nitrate, na.rm=TRUE)
  #file_output <- data.frame(id=x,sulfate_mean=sulfate_mean, nitrate_mean=nitrate_mean )
  #print(file_output)
  #final_output <- rbind(final_output,file_output)
}
master_file_sulfate <- subset(master_file, id=id & sulfate != "NA")
master_file_nitrate <- subset(master_file, id=id & nitrate != "NA")
grand_mean_sulfate <- mean(master_file_sulfate$sulfate, na.rm=TRUE)
grand_mean_nitrate <- mean(master_file_nitrate$nitrate, na.rm=TRUE)

#grand_mean_sufate <- mean(master_file$sulfate, master_file$id=id & na.rm=TRUE)
#print(final_output)
#grand_mean_sulfate <- mean(final_output$sulfate_mean, na.rm=TRUE)
#grand_mean_nitrate <- mean(final_output$nitrate_mean, na.rm=TRUE)

print(paste("Grand Mean Sulphate = ", grand_mean_sulfate))
print(paste("Grand Mean Nitrate = " , grand_mean_nitrate))


cr<-corr("specdata", 150)
print(head(cr))
print(summary(cr))
print(length(cr))
print("*******************")

cr<-corr("specdata", 400)
print(head(cr))
print(summary(cr))
print(length(cr))
print("*******************")

cr<-corr("specdata", 5000)
print(head(cr))
print(summary(cr))
print(length(cr))
print("*******************")

xsplit <- split(iris, iris$Species)
xsplit$virginica
apply(iris[, 1:4], 2, mean)
apply(mtcars, 2, mean)

lapply(mtcars, mean)

split(mtcars, mtcars$cyl)

mean(mtcars$mpg, mtcars$cyl)

sapply(split(mtcars$mpg, mtcars$cyl), mean)

tapply(mtcars$mpg, mtcars$cyl, mean)

tapply(mtcars$cyl, mtcars$mpg, mean)

class(A) #Finds the type of object it is
sapply(mtcars, cyl, mean)

with(mtcars, tapply(mpg, cyl, mean))

bb["4"] - bb["8"]

