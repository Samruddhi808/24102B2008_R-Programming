# R PROGRAMMING NPTEL - WEEK 2

cat("=== NPTEL WEEK 2: BASIC OPERATIONS, TYPES AND CALCULATIONS ===\n")

# 1. Assignment operator

x <- 20
x = 20

y = x * 2
z = x + y

x
y
z

# 2. Assignment of numbers and characters

x = 20
x = "apple"
x <- "apple1"
x = 'apple'
x <- 'apple'

# 3. Knowing numbers and characters

x = 20
is.numeric(x)
is.character(x)

y = "apple"
is.character(y)
is.numeric(y)

# 4. Converting numbers and characters

x = 20
is.numeric(x)

y = as.character(x)
is.numeric(y)
is.character(y)
y

# Character -> numeric:
y = "apple"
is.numeric(y)
is.character(y)

# This produces a warning and NA because "apple" is not numeric:
z = as.numeric(y)
is.numeric(z)
is.character(z)
z

# 5. Comment operator and case sensitivity

# mu is the mean
# x <- 20 is treated as a comment only

X <- 20
x <- 20
X
x

# 6. Combining values in a data vector

x <- c(1, 2, 3, 4, 5)
x

# 7. mode() and storage.mode()

x = 6
x
mode(x)

y = "apple"
y
mode(y)

x = 6
storage.mode(x)

x = TRUE
storage.mode(x)

x = "apple"
storage.mode(x)

# 8. Infinity

3 / 0
5 + Inf

x = 5 + Inf
is.finite(x)
is.infinite(x)

# 9. R as a calculator

2 + 3
2 * 3
2 - 3
3 / 2
2 * 3 - 4 + 5 / 6

# BODMAS examples from the PDF:
(2 + 3) * 5 + 5 - 10
(((2 + 3) * 5 + 5) - 10) / 2

# Blank spaces do not affect calculations:
2+5
2 + 5
2 +5

# 10. Data-vector arithmetic

# Addition:
c(2,3,5,7) + c(-2,-3,-5,8)

# Recycling with a shorter vector whose length divides exactly:
c(2,3,5,7) + c(8,9)

# Recycling with a non-multiple length produces a warning:
c(2,3,5,7) + c(8,9,10)

# Subtraction:
c(2,3,5,7) - c(-2,-3,-5,8)
c(12,13,15,17) - c(8,9)
c(12,13,15,17) - c(8,9,10)

# Multiplication:
c(2,3,5,7) * c(-2,-3,-5,8)
c(2,3,5,7) * c(8,9)
c(2,3,5,7) * c(8,9,10)

# Division:
c(24,20,8,16) / c(3,4,2,8)
c(24,20,8,16) / c(4,2)
c(24,20,8,16) / c(4,2,8)

# 11. Scalar versus vector calculations

c(2,3,5,7) + 10
c(12,13,15,17) - 10
c(2,3,5,7) * 10
c(12,13,15,17) / 10

cat("\nWeek 2 complete.\n")
