pollutantmean <- function(directory, pollutant, id=1:332){
  
  oldwd = getwd()
  setwd(paste("./",directory,sep=""))
  master_file <- NULL
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
  setwd(oldwd)
} 

#pollutantmean("specdata", "sulfate", 1:332)

#pollutantmean("specdata", "sulfate", 1:10)

#pollutantmean("specdata", "nitrate", 70:72)

#pollutantmean("specdata", "nitrate", 23)

#pollutantmean("specdata", "sulfate", 1:10)

#pollutantmean("specdata", "sulfate", 34)

pollutantmean("specdata", "nitrate")