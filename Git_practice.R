a<-1:200
cheesecake<-rep(1:10, 20)
a_cheesecake<-data.frame(a,cheesecake)
head(a_cheesecake)
library(ggplot2)
g1<- ggplot(a_cheesecake, aes(x=cheesecake,col="red"))+geom_histogram()+geom_histogram(aes(x=a, col="blue"))
g1
a_cheesecake$what<-rep(c("yes","no"),100)
g2<-ggplot(a_cheesecake, aes(x=what, y=cheesecake))+geom_boxplot()+geom_point(aes(col=a))+geom_jitter()
g2
