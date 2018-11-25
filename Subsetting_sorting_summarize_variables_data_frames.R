#set.seed(13435)
#x <- data.frame('var1' = sample(1:5), 'var2' = sample(6:10), 'var3' = sample(11:15))
#x <-x[sample(1:5),]
#x$var2[c(1,3)] <- NA
#print(x)


#if(!file.exists('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/data')){
#  dir.create('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/data')
#}


#fileURL <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?access=DOWNLOAD"
#destfile <-'C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/restaurants.csv'
#download.file(fileURL,destfile , method ='auto')
#restData <- read.csv(destfile)

#data("UCBAdmissions")
#DF = as.data.frame(UCBAdmissions)
#print(summary(DF))

#xt <- xtabs(Freq ~ Gender + Admit, data = DF)
#print(xt)

#print(object.size(warpbreaks),units='MB')

#library(reshape2)
#head(mtcars)
#mtcars$carname <- rownames(mtcars)
#carMelt <- melt(mtcars, id=c('carname', 'gear', 'cyl'), measure.vars=c('mpg','hp'))
#print(head(carMelt,n=3))
#print(tail(carMelt,n=3))
cylData <- dcast(carMelt, cyl ~ variable)
print(cylData )
cylData <- dcast(carMelt, cyl ~ variable,mean)
print(cylData )











