# R PROGRAMMING NPTEL - WEEK 3

cat("=== NPTEL WEEK 3: CALCULATIONS, FUNCTIONS AND MATRICES ===\n")

# 1. Addition with data vectors

c(2,3,5,7) + c(-2,-3,-5,8)

# 2. Power operations

2^3
2**3

2^0.5
2**0.5
2^-0.5

c(2,3,5,7)^2

c(2,3,5,7)^c(2,3)

c(1,2,3,4,5,6)^c(2,3,4)

# This demonstrates recycling with a non-multiple length and warning:
c(2,3,5,7)^c(2,3,4)

# 3. Integer division: %/%

2 %/% 2
5 %/% 2
7 %/% 3

c(2,3,5,7) %/% 2
c(2,3,5,7) %/% c(2,3)

# Warning example:
c(2,3,5) %/% c(2,3)

# 4. Modulo division: %%

2 %% 2
3 %% 2
7 %% 3
7 %% 4

c(2,3,5,7) %% 2
c(2,3,5,7) %% c(2,3)

# Warning example:
c(2,3,5) %% c(2,3)

# 5. Built-in functions

max(1.2, 3.4, -7.8)
max(c(1.2, 3.4, -7.8))

min(1.2, 3.4, -7.8)
min(c(1.2, 3.4, -7.8))

# The PDF specifically notes the difference caused by c():
mean(2, 3, 4)
mean(c(2, 3, 4))

# Other functions covered in the PDF:
abs(-4)
abs(c(-1,-2,-3,4,5))

sqrt(4)
sqrt(c(4,9,16,25))

sum(c(2,3,5,7))
prod(c(2,3,5,7))

round(1.23)
round(1.83)

floor(1.83)
ceiling(1.23)

log(10)
log(exp(1))
log(c(10,100,1000))

log10(10)
log10(100)
log10(c(10,100,1000))

log2(8)
exp(1)

sin(0)
cos(0)
tan(0)
asin(0)
acos(1)
atan(0)

sinh(0)
cosh(0)
tanh(0)
asinh(0)
acosh(1)
atanh(0)

# 6. Assignments

x1 = c(1,2,3,4)
x1

x2 = x1^2
x2

# Calculations using scalar, vector and built-in functions:
c(1,2,3,4) + sum(c(1,2,3,4)) * prod(c(1,2))
abs(c(1,2,3,4) - sum(c(1,2,3,4)) * prod(c(1,2)))

# 7. Matrix basics

x = matrix(
  nrow = 4,
  ncol = 2,
  data = c(1,2,3,4,5,6,7,8)
)
x

# Accessing one element:
x[3,2]

# Column-wise entry (default):
x = matrix(
  nrow = 4,
  ncol = 2,
  data = c(1,2,3,4,5,6,7,8),
  byrow = FALSE
)
x

# Row-wise entry:
y = matrix(
  nrow = 4,
  ncol = 2,
  data = c(1,2,3,4,5,6,7,8),
  byrow = TRUE
)
y

# Matrix properties:
dim(x)
nrow(x)
ncol(x)
mode(x)
attributes(x)

# Help / identification functions from the PDF:
help("matrix")
is.matrix(x)
as.matrix(1:10)

# The PDF also demonstrates that a data.frame is not a matrix:
data(warpbreaks)
!is.matrix(warpbreaks)
warpbreaks[1:10,]
as.matrix(warpbreaks[1:10,])

cat("\nWeek 3 complete.\n")
