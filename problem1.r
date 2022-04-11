#####################Practical Problem -1 #######################

Mr. Rahman, Prof of ICE department, PUST is interested in studying which Blood
type is most common. He asked his statistics students to state   their blood types.
The response of 40 students to state their blood types. The response of 40 students
in the class are given below.
O, A, B, AB, O, A, O, B,  AB, B,
O, A, A, B,  O, B, A, AB, O,  AB,
A, O, O, A,  B, B, A, O,  AB, O,
A, O, O, A,  B, O, O, B,  AB, B

I.   Construct a frequency distribution table and relative frequency distribution of the data.
II.  Plot the data bar chat and pie chart.
III. Comment on the data set.

blood<-c("O", "A", "B", "AB", "O", "A", "O", "B",  "AB", "B",
"O", "A", "A", "B",  "O", "B", "A", "AB", "O",  "AB",
"A", "O", "O", "A",  "B", "B", "A", "O",  "AB", "O",
"A", "O", "O", "A",  "B", "O", "O", "B",  "AB", "B")
######## Question-I ##########
freq<-table(blood)
freq
rel.freq<-freq/sum(freq)
rel.freq

######## Question-II ##########
par(mfrow=c(1,2))
barplot(freq,xlab="Blood Type",ylab="Frequency",main="Blood Summary",col="red")
barplot(rel.freq,xlab="Blood Type",ylab="Frequency",main="Blood Summary for Relative Frequency",col="blue")

cols=c("green","gray","black","red")
pie(freq,main="Blood Type", col=cols)
lebel<-c("A","AB","B","O")
legend("topright",c(lebel), cex=1, fill=cols)


