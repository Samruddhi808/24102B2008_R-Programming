# R Programming - Week 10
# Strings and Data Frames

# 1. sub() and gsub()
y <- "Number of participants: 25"
sub("25", "30", y)

y <- "Mr. Singh is the smart one. Mr. Singh is funny, too."
sub("Mr. Singh", "Professor Jha", y)
gsub("Mr. Singh", "Professor Jha", y)

# 2. grep()
str <- c("R Course", "exercises", "include examples of R language")
grep("ex", str, value = TRUE)
grep("ex", str, value = FALSE)

str <- c("R Course", "exercises", "include examples of r language",
         "in R software.")
grep("R", str, ignore.case = FALSE, value = TRUE)
grep("R", str, ignore.case = TRUE, value = TRUE)
grep("R", str, ignore.case = TRUE, value = FALSE)
grep("R", str, ignore.case = FALSE, value = FALSE)

x <- "R course 24.07.2021"
y <- "Number of participants: 25"
grep("our", c(x, y))
grep("Num", c(x, y))

# 3. grepl()
str <- c("R Course", "exercises", "include examples of R language")
grepl("R", str)
grepl("ex", str)

# 4. Data frames
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

# 5. attach() and detach()
attach(painters)
summary(School)
summary(Composition)
detach(painters)

# 6. Subsetting data frames
subset(painters, School == "F")
painters[painters[["School"]] == "F", ]

subset(painters, Composition <= 6)

subset(painters, School == "F", select = c(-3, -5))

# 7. split()
splitted <- split(painters, painters$School)
splitted
is.data.frame(splitted$A)

# 8. Combining data frames with cbind()
df1 <- data.frame(
  state = c("UP", "MP", "AP", "JK"),
  popnsize = c(1000, 2000, 3000, 4000)
)

df2 <- data.frame(
  state = c("UP", "MP", "AP", "JK"),
  samplesize = c(100, 200, 300, 400),
  surveycompleted = c("Yes", "No", "Yes", "No")
)

df1
df2
cbind(df1, df2)

# 9. Merging data frames
merge(df1, df2, by = "state")

# 10. Combining data frames with rbind()
df11 <- data.frame(
  state = c("UP", "MP", "AP", "JK"),
  popnsize = c(1000, 2000, 3000, 4000)
)

df22 <- data.frame(
  state = c("Bihar", "Delhi", "Punjab"),
  popnsize = c(100, 200, 300)
)

df11
df22
rbind(df11, df22)
