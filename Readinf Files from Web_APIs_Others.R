#################################WEB READING###############################
#library(XML)
#library(httr)
#urlx <- "http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en"
#html <- htmlTreeParse(urlx,useInternalNodes =T) #Doesnt workpackage ‘RJSONIO’ successfully unpacked and MD5 sums checked

#html <- htmlParse(rawToChar(GET(urlx)$content)) #updated code from forum
#xpathval <- xpathSApply(html,"//title", xmlValue)
#xpathval2 <-xpathSApply(html, "//td[@class = 'gsc_a_c']", xmlValue) #//td does not work, updated code from forum
#print(xpathval2)

#con = url(urlx)
#htmlCode = readLines(con)
#close(con)
#print(htmlCode)

#html2 = GET(urlx)
#content2 = content(html2, as='text')
#parsedHtml = htmlParse(content2, asText = TRUE)
#xpathval<- xpathSApply(parsedHtml, "//title", xmlValue)
#print(xpathval)

#url <- GET('http://httpbin.org/basic-auth/user/password', authenticate('user', 'password'))

#gg = handle('http://google.com')
#pg1 = GET(handle = gg, path='/')
#pg2 = GET(handle = gg, path = 'search')

#################################WEB READING###############################

######################API- Applicatiion Programming Interfaces#############
#library(RJSONIO)
#library(jsonlite)
#myapp = oauth_app("twitter", key = 'sedgx07aLXhQ2xEIzwNYo20L8', secret = '3xrwytqoQTsTsA5wZrYzQiouZTkosV2OwImxzJqIPhgX59ACyF')
#sig = sign_oauth1.0(myapp, token = '168146926-sKQPlLmEyDv0bJHXejQ0S4vYv2jezDE56Cg62bCA', token_secret = 'utOcJ4oSGwad3UpVMOgTUykMhdiHJRhgRd18jiiO2OB1P')
#homeTL = GET('https://api.twitter.com/1.1/statuses/home_timeline.json', sig)
#json1 = content(homeTL)
#json2 = fromJSON(toJSON(json1))
#print(json2[1,1:4])

##GET statuses/home_timeline##
#urlx <- https://api.twitter.com/1.1/statuses/home_timeline.json
######################API- Applicatiion Programming Interfaces#############

# Read from Flat File
#x <- read.fwf(file=url("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"),   
#              skip=4, widths=c(12, 7, 4, 9, 4, 9, 4, 9, 4))
