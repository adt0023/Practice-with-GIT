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
g3<-ggplot(a_cheesecake, aes(x=a, y=cheesecake))+geom_point(aes(col=what))+geom_jitter()
g3
a_cheesecake$bananabread<-log(cheesecake)
g4<-ggplot(a_cheesecake, aes(x=a, y=bananabread))+geom_point(aes(col=what))+geom_jitter()
g4
g5<-ggplot(a_cheesecake, aes(x=cheesecake))+geom_histogram(aes(col=what))+geom_histogram(aes(x=bananabread,col=what))
g5
pie<-3.14*c(a_cheesecake$cheesecake,a_cheesecake$bananabread)
a_cheesecake$pie<-head(sqrt(pie),200)
a_cheesecake$pie<-head(sqrt(pie),200)

bananagrams<- rep(c("A","E"),200)

applegrams<-rep(c("alpha","beta"),100)
a_cheesecake$applegrams<-applegrams
