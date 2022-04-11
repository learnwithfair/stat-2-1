##############Problem-6###############
Given the following data:
		0,1,2,3,4,5 and n=5, p=0.45
I.  Calculate binomial distribution and make a bar plot.
II. Calculate Pr(X<=2) in binomial distribution.
III.Calculate Pr(X>=3)
IV. Calculate Pr(X=2)
V.  Calculate Pr(1<X<=3)
VI. Find cdf of the data.


###########(i)##############
n<-5
p<-.45
x<-0:5
q<-(1-p)
px<-choose(n,x) * p^(x) *  q^(n-x)
barplot(px, names=x, xlab = "Outcomes", ylab = "Probability",col="red")

###########(ii)##############
pbinom(2,5,.45)

###########(iii)##############
px = 1- pbinom(2,5,.45)

###########(iv)#############
dbinom(2,5,.45)

###########(v)#############
dbinom(2,5,.45)+dbinom(3,5,.45)

###########(vi)#############
qx<-cumsum(px)
plot(x,qx,type="s",xlab="Outcomes",ylab="Cum.prob",col="red")

