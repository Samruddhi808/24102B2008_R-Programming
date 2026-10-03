# NPTEL R Programming - Week 8
# Operations on lists, vector indexing, factors and string formatting

# 1. Operations on lists
list1 = list(1, 2, 3)
list2 = list("water", "juice", "lemonade")

list12 = c(list1, list2)
list12

unlist(list1)
unlist(list2)
mode(list1)
mode(unlist(list1))

append(list1, 100)
append(list2, "coffee")
append(list1, 100, after = 2)
append(list2, "coffee", after = 2)

list1[-2]
list2[-1]

list3 = list(1, 2, 3, 4, 5, 6)
list3[2:4]
list3[c(1, 3, 5)]

# Matrices and mixed-mode lists
m1 = matrix(1:4, nrow = 2, ncol = 2, byrow = TRUE)
m2 = matrix(5:8, nrow = 2, ncol = 2, byrow = TRUE)
matlist = list(m1, m2)
matlist

mixed = list(1, 2, 3, "X", "Y", "Z")
dim(mixed) = c(2, 3)
mixed
mode(mixed)

# 2. Vector indexing
x = 1:10
x[x > 5]
x[x %% 2 == 0]
x[x %% 2 == 1]

x[5] = NA
x
y = x[!is.na(x)]
y
mean(x)
mean(y)

x = 1:10
x[-(1:5)]
x[6:10]

# Named vector
z = c(water = 1, juice = 2, lemonade = 3)
names(z)
z["juice"]

# Empty index
x[]

# 3. Factors
performance = c("Excellent", "Average", "Good", "Bad", "Good")
factor(performance)

die = c(1, 4, 3, 5, 4, 2, 4)
possible.dieface = c(1, 2, 3, 4, 5, 6)
labels.dieface = c("one", "two", "three", "four", "five", "six")
facy = factor(die, levels = possible.dieface, labels = labels.dieface)
facy
levels(facy)

brands = c("A", "A", "B", "B", "B", "B", "C")
brands_fac = factor(brands)
brands_fac
unclass(brands_fac)

colours = c("blue", "green", "red")
colours[unclass(brands_fac)]

custom = factor(
  c("lemonade", "lemonade", "juice", "lemonade", "water"),
  levels = c("water", "juice", "lemonade")
)
custom
unclass(custom)
levels(custom)

income = ordered(
  c("high", "high", "low", "medium", "medium"),
  levels = c("low", "medium", "high")
)
income
unclass(income)

# Class and unclass
class(9)
class("9")
class(print)
class(matrix(1:4, nrow = 2))
class(facy)
unclass(facy)

# 4. String display and formatting
print(sqrt(2))
print(sqrt(2), digits = 5)
print(sqrt(2), digits = 10)

print("apple")
print(c("apple", "banana"))
print(c("apple", "banana", 6, 10))

format(0.5, digits = 10, nsmall = 15)
format(c("A", "BB", "CCC", "DDDD"), width = 7, justify = "centre")
format(c("A", "BB", "CCC", "DDDD"), width = 7, justify = "left")
format(c("A", "BB", "CCC", "DDDD"), width = 7, justify = "right")
format(c("A", "BB", "CCC", "DDDD"), width = 7, justify = "none")

format(1234567, big.mark = ",")
format(12345678, big.mark = " ")

cat("Hello", "R", "\n")
paste("R", "Programming")
paste("Week", 8, sep = "-")
