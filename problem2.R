###############Problem-2################
Table below display the number of days to maturity for 40 short term investments.
The data are from BARRON’s magazine. Using limit grouping organize the data into
frequency and relative frequency distribution.
70,64,99,55,64,89,87,65,62,38,67,70,60,69,78,39,75,56,71,51,99,68,95,86,57,53,47,
50,55,81,80,98,51,36,63,66,85,79,83,70.

i.  Construct a frequency distribution table.
ii. Plot histogram of this frequency.
iii.Find mean, variance, standard deviation, quantile, mode, boxplot, summary.
iv. Find mean deviation (Mean), mean deviation (Median), mean deviation (Mode).
v.  Find co-efficient of variance, kurtosis and skewness.

########## (i) ##########
maturity<-c(70,64,99,55,64,89,87,65,62,38,67,70,60,69,78,39,75,56,71,51,99,68,
95,86,57,53,47,50,55,81,80,98,51,36,63,66,85,79,83,70)
range(maturity)
breaks<-seq(30,100,by=10)
breaks
maturity.freq<-table(cut(maturity, breaks, left=FALSE, right=FALSE))
maturity.freq
cbind(maturity.freq)

########## (ii) ##########
hist(maturity, xlab="Days of Maturity" , ylab="Frequency", breaks, col="green")
cumulative.freq<-cumsum(maturity.freq)
cum.freq<-c(0,cumulative.freq)
plot(breaks,cum.freq,xlab="Maturity",ylab="Ogive curve")
lines(breaks,cum.freq,col="red")

########## (iii) ##########
mean(maturity);
var(maturity)
sd(maturity)
meanX<-sum(maturity)/length(maturity)
meanX
varX<-sum((maturity-mean(maturity))^2)/(length(maturity)-1)
varX
sdX<-sqrt(varX)
sdX
quantile(maturity, 0.25)
quantile(maturity, 0.5)
quantile(maturity, 0.75)
quantile(maturity, c(0.25,0.5,0.8))
modeX<-which.max(table(maturity))
modeX
boxplot(maturity)
summary(maturity)

########## (iv) ##########
sum(abs(maturity-mean(maturity)))/length(maturity)  
sum(abs(maturity-median(maturity)))/length(maturity)
sum(abs(maturity-modeX))/length(maturity)

########## (v) ##########

cv<-(sd(maturity)/mean(maturity))*100
cv
moment2 = (sum((maturity-mean(maturity))^2))/(length(maturity))
moment2
moment3 = (sum((maturity-mean(maturity))^3))/(length(maturity))
moment3 
moment4 = (sum((maturity-mean(maturity))^4))/(length(maturity))
moment4 
sk<-((moment3)^2)/((moment2)^3)
sk
Y1<-sqrt(sk)
Y1
kr<-(moment4)/((moment2)^2)
kr
Y2<-kr-3
Y2