#source('http://bioconductor.org/biocLite.R')

## 'http' if 'https' unavailable
#source("https://bioconductor.org/biocLite.R")
#biocLite("BiocUpgrade")

#biocLite('rhdf5')
#library(rhdf5)
#created = h5createFile('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5')
#created

#created = h5createGroup('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5', 'foo')
#reated = h5createGroup('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5', 'baa')
#created = h5createGroup('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5', 'foo/foobaa')
#print(h5ls('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5'))

#A = matrix(1:10, nr=5, nc=2)
#h5write(A,'C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5', 'foo/A')
#B = array(seq(0.1,2.0,by=0.1),dim = c(5,2,2))
#attr(B, 'scale') <- 'liter'
#h5write(B, 'C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5', 'foo/foobaa/C')
#print(h5ls('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5'))

#df = data.frame(1L:5L, seq(0,1, length.out =5), c('ab','cde', 'fghi', 'a','s'), stringsAsFactors=FALSE)
#h5write(df,'C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5','df')
#print(h5ls('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5'))

#readA = h5read('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5', 'foo/A')

h5write(c(12,13,14), 'C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5', 'foo/A', index=list(1:3,1))
print(h5read('C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/example.h5','foo/A'))











