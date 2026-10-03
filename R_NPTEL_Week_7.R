# NPTEL R Programming - Week 7
# Sequences, dates, alphabets, repeats, sorting, ordering, mode and lists

# 1. Sequences
1:10
10:1
5:15
seq(1, 10, by = 2)
seq(1, 2, by = 0.2)
seq(1, 10, length.out = 5)

x = seq(1, 50, 1/2)
y = 2 * x
x
y

# Index vector
v = c(9, 8, 7, 6)
ind = seq(along = v)
ind
v[ind[2]]

# Current date and time
Sys.time()
Sys.Date()

# 2. Date sequences
seq(as.Date("2010-01-01"), as.Date("2017-01-01"), by = "years")
seq(as.Date("2017-01-01"), by = "days", length.out = 6)
seq(as.Date("2017-01-01"), by = "months", length.out = 6)
seq(as.Date("2017-01-01"), by = "years", length.out = 6)

startdate = as.Date("2016-01-01")
enddate = as.Date("2017-01-01")
seq(enddate, startdate, by = "-1 month")

# 3. Alphabet sequences
letters
letters[1:3]
letters[3:1]
letters[21:23]

LETTERS
LETTERS[1:3]
LETTERS[3:1]
LETTERS[21:23]

# 4. Repeats
x = 1:4
rep(x, times = 3)
rep(x, each = 3)
rep(3.5, times = 10)
rep(x, length.out = 10)
rep_len(x, 10)

# 5. Sorting
y = c(8, 5, 7, 6)
sort(y)
sort(y, decreasing = TRUE)

y = c(9, 8, 5, 7, 6)
order(y)
order(y, decreasing = TRUE)

# 6. Mode
mode(2.432)
mode("India")
mode(c(3, 4, 5, 6))
mode(list("India", "USA"))
mode(factor(c("UP", "MP")))
mode(data.frame(x = 1:2, y = c("India", "USA")))
mode(print)

# 7. Lists
x1 = matrix(nrow = 2, ncol = 2, data = 1:4, byrow = TRUE)
x2 = matrix(nrow = 2, ncol = 2, data = 5:8, byrow = TRUE)
x1
x2
x1 + x2

matlist = list(x1, x2)
matlist
matlist[1]
matlist[2]

z1 = list(
  c("water", "juice", "lemonade"),
  rep(1:4, each = 2),
  matrix(data = 5:8, nrow = 2, ncol = 2, byrow = TRUE)
)
z1
z1[[1]]
z1[[1]][2]
z1[c(1, 3)]

named_list = list(Students = c("A", "B", "C"), Marks = c(80, 90, 85))
named_list[["Students"]]
named_list$Marks
