library(agricolae)

MYDATA<-read.csv("C:/test/numthree.csv")
print(MYDATA)

MYDATA<-transform(MYDATA, fsystem=factor(정당))
sapply(MYDATA,class)

a<-aov(의석수~fsystem, data=MYDATA)
print(a)

s<-summary(aov(의석수~fsystem, data=MYDATA))
print(s)

aovResult<-aov(의석수~fsystem, data=MYDATA)
t<-TukeyHSD(aovResult)
print(t)

d<-duncan.test(aovResult, "fsystem", alpha = 0.05, console=TRUE)
print(d)

box<-boxplot(의석수~정당, data=MYDATA)
print(box)