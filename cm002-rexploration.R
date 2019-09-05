#using R and RStudio
number<-5+2
number*2 #order execute line matters

#vectors
times<-c(60,40,33,15,20,55,35)
(times<-c(60,40,33,15,20,55,35))
times/60
times

#functions
mean(times)
sqrt(times)
range(times)
sd(times)

#comparison
times<30
times==20
times != 20
times>20 & times<50
times<20 | times>50
which(times<30)
sum(times<30)
all(times<30)
any(times<30)

#Subsetting
times[2]
times[-3]
times[c(4,2)]
times[c(2,4)]
times[2:4]
times[times<30]
times
times[times>50]<-50
times

#NA
times[8]<-NA
times
times[11]<-NA
times
mean(times)
?mean
mean(na.omit(times))
mean(times,na.rm = TRUE)
mean(times,0, TRUE)

#data frame
mtcars
str(mtcars)
names(mtcars)
head(mtcars)
nrow(mtcars)
tail(mtcars)
mtcars$mpg
mtcars[c("mpg","wt")]
