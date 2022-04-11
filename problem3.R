###############Problem-3###########
A fair coin is tossed three times.
I.  Make the sample space.
II. Make an event in which Head appears in first toss 
    and another event in which Head appears in third toss.
III.Intersect and union these two events.
IV. Make probability space of this event.
V.  Calculate probability of the event in which Head appears in first toss.

############### (i) ##################
library(prob)
s<-tosscoin(3)
s

############### (ii) ##################
A<-subset(s, toss1=="H")
A
B<-subset(s, toss3=="H")
B

############### (iii) ##################
intersect(A,B)
union(A,B)

############### (iv) ##################
s<-tosscoin(3, makespace=TRUE)

############### (v) ##################
A<-subset(s, toss1=="H")
A
prob(A)


