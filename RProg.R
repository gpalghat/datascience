##getwd() 
##setwd("~/GitHub/datasciencecoursera")
##source('RProg.R')
##x<-1
##print(x)
##x<1L
##print(x)
##x=1/Inf
##print(x)
##x=1/0
##print(x)
##x=0/0
##print(x)
##x=NaN
##print(x)
##x<-c(0.5,0.6)
#print(x)
##print(typeof(x))
##y<-c(1.7, 'a')
##z<-c(TRUE, 2)
#x<-list(1,'a',TRUE,1+4i)
#as.numeric(x)
#as.character(x)
#as.complex(x)
#x=list(1,'a',TRUE, 1+4i)
#print(x)


#When you are at the R prompt (>):
#  | -- Typing skip() allows you to skip the current question.
#| -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
#| -- UNTIL you type nxt() which will regain swirl's attention.
#| -- Typing bye() causes swirl to exit. Your progress will be saved.
#| -- Typing main() returns you to swirl's main menu.
#| -- Typing info() displays these options again.
#| -- if at any point you'd like more information on a particular topic related to R, you can type
#| --  help.start() at the prompt


columnmean <- function(y,removeNA=TRUE){
    nc<-ncol(y)
    means<-numeric(nc)
    for(i in 1:nc){
        means[i] <- mean(y[,i],na.rm = removeNA)
    }
    means
}

# command to get variables and default vaules
formals(lm)

args(lm)

args(paste)

# Environment search
search()

#Its important to know that the library loaded will always be 2nd namespace,
#1st always will be.GlobalEnv

?optim

optim(columnmean)

ls(environment(columnmean))

x<- as.Date('1970-01-01')
unclass(x)

y<-as.Date('2018-10-22')
unclass(y)

?strptime

# installing Swirl
install.packages('swirl')
library('swirl')

#Important to remeber &  or | for all the elements, 
#&& and || for the 1st element only

#lubridate package by Hadley Wickham.

#dim(data.frame) = offers the dimensions i.e. number of rows and columns

