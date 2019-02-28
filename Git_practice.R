a<-1:200
cheesecake<-rep(1:10, 20)
a_cheesecake<-data.frame(a,cheesecake)
head(a_cheesecake)
library(ggplot2)
g1<- ggplot(a_cheesecake, aes(x=cheesecake))+geom_histogram()+geom_histogram(aes(x=a))
g1