######################Week 2 QUIZ #######################
#library(httr)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
#oauth_endpoints("github")

# 2. To make your own application, register at 
#    https://github.com/settings/developers. Use any URL for the homepage URL
#    (http://github.com is fine) and  http://localhost:1410 as the callback url
#
#    Replace your key and secret below.
#myapp <- oauth_app("github",
#                   key = "b84505a2ffe0ad69922a",
#                   secret = "844723f393cda71405984c81da8faff37356a275")

# 3. Get OAuth credentials
#github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
#gtoken <- config(token = github_token)
#req <- GET("https://api.github.com/rate_limit", gtoken)
#req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
#stop_for_status(req)
#json1 <- content(req)
# Convert to a data.frame
#gitDF = jsonlite::fromJSON(jsonlite::toJSON(json1))

# Subset data.frame
#gitDF[gitDF$full_name == "jtleek/datasharing", "created_at"] 



# OR:
#req <- with_config(gtoken, GET("https://api.github.com/rate_limit"))
#stop_for_status(req)
#content(req)
##############################################

#library(sqldf)
#acs <- read.csv('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/w3data.csv', 
#                header = TRUE, sep=',')

#library(httr)
#urlx <- 'http://biostat.jhsph.edu/~jleek/contact.html'
#htmllines <- readLines(urlx)
#print(paste(nchar(htmllines[10]),nchar(htmllines[20]),
#            nchar(htmllines[30]),nchar(htmllines[100])))

#library(readr)

#x <- read.fwf(file=url("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"),   
#  skip=4, widths=c(12, 7, 4, 9, 4, 9, 4, 9, 4))
#print(sum(x$V4))
