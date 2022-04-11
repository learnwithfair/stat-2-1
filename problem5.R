##########Problem-5#########
A balance die is thrown three times.
I.  Find the probability of a random variable X=X1+X2-X3.
II. Find the probability of a random variable X>4.
III.Find a random variable that find the maximum among X1,X2 and X3


###########(i)########## 
s<-rolldie(3, makespace=TRUE)
A<-addrv(s, X=X1+X2-X3)
Prob(A)
head(A)

###########(ii)########## 
Prob(A, X>4) ##1/216

###########(iii)########## 
s<-addrv(A,FUN=max, invars=c("X1" ,"X2", "X3"),name="Y")
head(s)

marginal(s,vars="Y")