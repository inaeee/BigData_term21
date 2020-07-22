library(ggplot2)
MYDATA<-read.csv("C:/test/numone.csv")
print(MYDATA)

table1<-table(MYDATA$Z, MYDATA$X)
result<-barplot(table1, legend.text=T, col=c("blue","red"))
print(result)