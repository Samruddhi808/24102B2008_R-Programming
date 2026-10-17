## NPTEL week 10

y = "Numbers of participants: 25"

sub("25","30", y)

x = "Mr. Singh is the smart one. Mr. Singh is funny, too."

sub("Mr. Singh","Professor Jha", x)

print(x)

y = "Mr. Singh is the smart one. Mr. Singh 
is funny, too."
gsub("Mr. Singh","Professor Jha", y)

sub("Mr. Singh","Professor Jha", y)

str = c("R Course", "exercises", "include 
examples of R language")

grep("ex", str, value=T) 

# grepl
str = c("R Course", "exercises", "include examples of R language")
grepl("R", str)
grepl("ex", str)

# Data frame
library(MASS)
painters
rownames(painters)
colnames(painters)

is.numeric(painters$School)
is.numeric(painters$Drawing)
is.factor(painters$School)
is.factor(painters$Drawing)

summary(painters)
summary(painters$School)
summary(painters$Composition)

# Attach / detach
attach(painters)
summary(School)
summary(Composition)
detach(painters)

# Subset
subset(painters, School=="F")
painters[painters[["School"]] == "F",]

subset(painters, Composition <= 6)
subset(painters, School=="F", select=c(-3,-5))


splitted = split(painters, painters$School)
splitted
is.data.frame(splitted$A)


df1 = data.frame(
  state=c("UP","MP","AP","JK"),
  popnsize=c(1000,2000,3000,4000)
)

df2 = data.frame(
  state=c("UP","MP","AP","JK"),
  samplesize=c(100,200,300,400),
  surveycompleted=c("Yes","No","Yes","No")
)

df1
df2
cbind(df1, df2)

merge(df1, df2, by="state")

df11 = data.frame(
  state=c("UP","MP","AP","JK"),
  popnsize=c(1000,2000,3000,4000)
)

df22 = data.frame(
  state=c("Bihar","Delhi","Punjab"),
  popnsize=c(100,200,300)
)

rbind(df11, df22)