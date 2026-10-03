# R PROGRAMMING NPTEL - WEEK 5

cat("=== NPTEL WEEK 5: MISSING DATA AND CONDITIONAL EXECUTION ===\n")

# PART A: MISSING DATA

# 1. NA and is.na()
x = NA
x
is.na(x)

# 2. Missing values in a vector
x = c(11, NA, 13, NA)
x
is.na(x)

# 3. Mean with and without removing NA
mean(x)
mean(x, na.rm = TRUE)

# 4. NA versus NULL
na_value = NA
null_value = NULL

na_value
null_value

is.na(na_value)
is.null(null_value)

# 5. Locate missing values
x = c(11,NA,13,NA)
x
which(is.na(x))

# 6. Count missing values
sum(is.na(x))

# 7. Complete cases
complete.cases(x)

# 8. Remove missing values
y = na.omit(x)
y

# The PDF shows the attributes produced by na.omit():
attr(y, "na.action")
attr(y, "class")

mean(x)
mean(y)

# PART B: IF

# 9. Simple if
x = 5
if (x > 4) x * 3

x = 3
if (x > 4) x * 3

# Same example using braces:
x = 5
if (x > 4) {x * 3}

x = 3
if (x > 4) {x * 3}

# Printing based on a condition:
x = 6
if(x > 3){
  print("The value is more than 3")
}

x = 2
if(x > 3){
  print("The value is more than 3")
}

# 10. if-else

x = 5
if (x==3) {x = x-1} else {x = 2*x}
x

x = 3
if (x==3) {x = x-1} else {x = 2*x}
x

x = 6
if(x > 3){
  print("The value is more than 3")
} else {
  print("The value is less than 3")
}

x = 2
if(x > 3){
  print("The value is more than 3")
} else {
  print("The value is less than 3")
}

# 11. Nested if / else-if / else

x = 5
if (x==3) {
  x = x-1
} else if (x < 3) {
  x = x+5
} else {
  x = 2*x
}
x

x = 2
if (x==3) {
  x = x-1
} else if (x < 3) {
  x = x+5
} else {
  x = 2*x
}
x

x = 3
if (x==3) {
  x = x-1
} else if (x < 3) {
  x = x+5
} else {
  x = 2*x
}
x

# 12. ifelse() - vector-valued conditions

x = 1:10
x
ifelse(x < 6, x^2, x+1)

# Even/odd example from the PDF:
x = c(7,9,8,4)
ifelse(x %% 2 == 0, "even number", "odd number")

# 13. switch()

# Integer expression:
switch(2, "apple", "banana", "orange")
switch(1, "apple", "banana", "orange")

# Character expression:
switch(
  "colour",
  "colour" = "blue",
  "gender" = "male",
  "volume" = 50
)

switch(
  "volume",
  "colour" = "blue",
  "gender" = "male",
  "volume" = 50
)

# No-match examples:
switch(4, "apple", "banana", "orange")
switch(
  "size",
  "colour" = "blue",
  "gender" = "male",
  "volume" = 50
)

# 14. which()

x = c(10,15,8,14,6,12)
x

which(x == 14)
which(x != 12)
which(x > 10)

# which.min() and which.max()
x = matrix(nrow=3, ncol=3, data=1:9)
x

which.min(x)
which.max(x)

# Find odd values:
which(x %% 2 == 1)

# Return row/column positions:
which(x %% 2 == 1, arr.ind = TRUE)

cat("\nWeek 5 complete.\n")
