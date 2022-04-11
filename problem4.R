###############Problem-4#############
A balanced die is thrown two times.
I.  Make sample and probability space.
II. Calculate the probability of throwing the same number.
III.What is the probability that the sum is greater than or equal to 4.
IV. Given that the sum is greater than or equal to 4, find the probability
    of throwing the same number.

##########(i)#################
ss<-rolldie(2)
ps<-probspace(rolldie(2))


##########(ii)#################
A<-subset(ps, X1==X2)
Prob(A)

##########(iii)#################
B<-subset(ps, X1+X2>=4)
Prob(B)


##########(iv)#################
Prob(A, given=B)


