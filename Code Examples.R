#str(str)                                             ##str function offers a short list of whats in that object
#str(dataframe)                                       ## provides the structure for a data frame
#x<-rnorm(100,2,4)                                    ## r normal distribution with number of elements, mean and std deviation, 100 elements
#summary(x)                                           ## Provides buckets, if there are more than 7, "other is crated" Gives a summary of the data in the variable
#f <- gl(3,3,20,labels = seq_len(3),ordered = FALSE)  ## Function for replication of factor levels
#m<- matrix(rnorm(100),10,10)                         ## m is a matrix where random normal, with mean and std given, with 10x10 100 elements
#s<-split(airquality, airquality$Month)               ##split function, splits data set by month
##d,r,p,q - d-density, r-random, p-cumulative, q-quantile
#set.seed(1)                                          ##leads to random numbers that are same again and again
#ppois(2,2)                                           ## Poisson cumulative
#rpois(10,10)                                         ## Poisson random
#class(x)                                             ## Tells if its a list or data.frame etc.
#typeof(x)                                            ## What datatype - numeric, double etc
#dim(x)                                               ## Provides the number of rows and columns in a data.frame
#nrow(x), ncol(x)                                     ## Number of rows or columns
#print(object.size(x),units='MB')                     ## size occupied in memory
#names(x)                                             ## Labels of a data set
#head(x,num of rows)                                  ## default is 6, top n rows of a data set
#tail(x,num of rows)                                  ## default is 6, bottom n rows of a data set
#table(x$col1, x$col2, useNA='ifany)                  ## Provides group by counts by the # of columns listed, NA will be added as a separate column
#sum(x)                                               ## sum of value
#sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7)) ## offers you to control probabiity
#rbinom(1, size = 100, prob = 0.7)                    ## rbinom(n=100,size=1,0.7) also does exacty the same thing
#replicate(100, rpois(5, 10))                         ## Replicates the sample data sets
#colMeans(x)                                          ## Mean of a column in a matrix
#hist(x)                                              ## Histogram plot
#data(x)                                              ## Loads the data frame in memory
#rm("mydf")                                           ## Removes your object from memory
#library(dplyr)                                       ## Loads the library in memory
#packageVersion("dplyr")                              ## Provides version number, note the quotes
#install.packages(dplyr)                              ## if a library is not found, use it to install the package
#select(dplyr_table, <columns order> )                ## Gives the columns I need
#filter(dplyr_table, columnname =='fiter condition')  ## filter gives rows, selct gives columns
#####################Polting based on generating random data#####################################
#set.seed(20)
#x<-rnorm(100)
#x<-rbinom(100,1,0.5)
#e<-rnorm(100,0,2)
#y<-0.5+2*x+e
#summary(y)
#plot(x,y)

#log.mu<-0.5+0.3*x
#y<-rpois(100,exp(log.mu))
#summary(y)
#plot(x,y)                                             
#plot(x = cars$speed, y = cars$dis)
#plot(x = cars$speed, y = cars$dist, xlab = "Speed", 
#   ylab="Stopping Distance", 
#   main ="My Plot", sub = "Subtitle)                 ## Provides lables
#plot(cars, col=2, xlim=c(10,15), pch=2)              ## color, limits, triangles
#boxplot(formula = mpg ~ cyl, data = mtcars)          ## allows to x/y boxplot
#################################################################################################
#set.seed(1)
#sample(1:10,4)                                       ## Sample from 1 to 10 for 4 nos
#sample(letters,5)                                    ## LETTERS - Caps output, letters - small output
#sample(1:10, replace = TRUE)                         ## Sample reuse nos
#t<-system.time(readLines("http://www.jhsph.edu"))    ## Time it takes to read the lines
#print(t)                                             ## Print the output
#lm(y ~ x)                                            ## Linear Model Fitting
#summaryRProf()                                       ## Summary of function calls, and % of time spent on each function
#Rprof()                                              ## Profiles at every 0.02 sec intervals
#$by.total, $by.self, $sample.interval, $sampling.time, C and Fortan code is not profiled
#rm(list=ls())                                        ## Remove all variables in an environment
#x[,1]                                                ## Dataframe: Data from 1st column
#x[,'var1']                                           ## Dataframe: Data from column whose names is var1
#x[1:2,'var2']                                        ## Dataframe: 1st 2 rows of the var2 column - value of Col var2 based on seq of arrays - row num
#x[x$var1 <=3 & x$var3 >11),]                         ## Dataframe: All data satisfylng the conditions
#x[which(x$var2>8),]                                  ## Dataframe: Does not return NA, gets rest that satisfies the conditions 
#sort(x$var1, decreasing = TRUE, na.last=TRUE)        ## Dataframe: Sorts output, default is ascending, na.last puts NA in last
#outcome_file[outcome_file$State=="GA",]              ## Get a subset of a data frame
#x[order(mpg, cyl),]                                  ## Dataframe: order , if you use -cyl then decending
#is.numeric(x)                                        ## Checks if its number or not
#xdf[,c("colname1","colname2")]                       ## Select specific columns of a data frame
#xdf[complete.cases(xdf),]                            ## Rows with ALL Values will be slected (even with one NA or NULL wont)
#arrange(dplyr_table, col1, desc(col2), etc..)        ## Dataframe: ascending order, desc(column) for decend
#mutate(cran3, size_mb = size/2^20, size_gb = size_mb/2^10) ## Create multiple new columns
#summarize(cran, avg_bytes = mean(size))              ## Provides a summary of a table
#x$new_var <- rnorm(5)                                ## Dataframe: Creating a  new column in data frame
#x <- cbind(x, rnorm(5))                              ## Dataframe: Bind a new column
#x <- rbind(x, rnorm(5))                              ## Dataframe: Bind a new row
#any(is.na(x$col1))                                   ## check if any value is any
#all(x$col1 >0)                                       ## Conditiont o see if there is any value <=0
#sum(is.na(x$col1))                                   ## Sum of selected column that is NA
#colSums(is.na(x))                                    ## Sum of all the columns is NA
#xtabs(innercolumn ~ outergroup + column to sum by, data = dataframe) ## Dataframe: crosstabs
#xtabs(innercolumn ~., data=datframe)                 ## Dataframe: the DOT gives you all the columns
#tbl_df(dataset)                                      ## Dplyr: saves data as data frame





