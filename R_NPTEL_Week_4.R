# R PROGRAMMING NPTEL - WEEK 4

cat("=== NPTEL WEEK 4: MATRIX OPERATIONS AND LOGICAL OPERATORS ===\n")

# PART A: MATRIX OPERATIONS

# 1. Matrix and row/column names
x = matrix(nrow=4, ncol=3, data=c(1:12))
x

rownames(x) = c("r1","r2","r3","r4")
x

colnames(x) = c("c1","c2","c3")
x

# 2. Assign a specified number to all elements
x = matrix(nrow=4, ncol=2, data=2)
x

# 3. Diagonal matrices
d = diag(1, nrow=3, ncol=3)
d

d = diag(5, nrow=3, ncol=3)
d

# 4. Transpose
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
x

xt = t(x)
xt

# 5. Row and column sums
x = matrix(nrow=4, ncol=2, data=c(1,2,3,4,5,6,7,8))
x

rowSums(x)
colSums(x)

# 6. Row and column means
rowMeans(x)
colMeans(x)

# 7. Access rows, columns and submatrices
x = matrix(nrow=5, ncol=3, byrow=T, data=1:15)
x

x[3,]
x[,2]
x[4:5, 2:3]
x[c(1,4), c(1,3)]

# 8. Matrix + scalar
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
x
x + 5

# 9. Matrix - scalar
x - 5

# 10. Matrix * scalar
5 * x

# 11. Matrix / scalar
x / 2

# 12. Matrix addition/subtraction (same dimensions)
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
y = matrix(nrow=4, ncol=2, data=11:18, byrow=T)

x
y

x + y
x - y

# 13. Scalar algebra with matrices
4 * x
x + 4 * x
4 * x - x

# 14. Matrix multiplication using %*%
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
y = matrix(nrow=2, ncol=4, data=11:18, byrow=T)

x %*% y
y %*% x

# 15. Transpose and multiplication
t(x)
t(x) %*% x
x %*% t(x)

# 16. Cross product
crossprod(x)

# 17. Concatenating matrices
x = matrix(nrow=3, ncol=2, data=1:6, byrow=T)
y = matrix(nrow=3, ncol=2, data=11:16, byrow=T)

rbind(x, y)
cbind(x, y)

# 18. Inverse of matrix
y = matrix(
  nrow=2, ncol=2, byrow=T,
  data=c(84,100,100,120)
)
y
solve(y)

# 19. Eigenvalues and eigenvectors
eigen(y)

# PART B: LOGICAL / RELATIONAL OPERATORS

# Relational operators:
8 > 7
7 < 5
7 > 7
7 >= 7
8 < 8
8 <= 8

8 != 9
9 != 9
7 == 7
7 == 8

x = TRUE
!x

# Vector comparisons:
x = c(1,2,3)
y = c(4,5,6)

x > y
x < y
x != y
x == y

# Logical AND / OR

x = 8
(x < 10) || (x < 2)

x = 18
(x < 10) || (x < 2)

# || only uses the first element of vectors:
x = c(8,18)
(x < 10) || (x < 2)

# | operates element-wise:
(x < 10) | (x < 2)

# && vs &:
x = 5
(x < 10) && (x > 2)

x = 15
(x < 10) && (x > 2)

x = c(8,18)
(x < 10) && (x > 2)
(x < 10) & (x > 2)

# Logical indexing

x = 1:6
(x > 2) & (x < 5)
x[(x > 2) & (x < 5)]

(x > 2) | (x < 5)
x[(x > 2) | (x < 5)]

# Longer logical operators inspect only the first element:
(x > 2) && (x < 5)
(x[1] > 2) & (x[1] < 5)

# Standard logical operations:
x = TRUE
y = FALSE

x & y
x | y
!x

# xor / TRUE / FALSE tests
xor(TRUE, FALSE)
xor(TRUE, TRUE)

isTRUE(TRUE)
isTRUE(FALSE)
isFALSE(TRUE)
isFALSE(FALSE)

# Store logical comparisons:
x = 5

Logical1 = (x > 2)
Logical1
is.logical(Logical1)

Logical2 = (x < 10)
Logical2
is.logical(Logical2)

Logical3 = (x != 5)
Logical3
is.logical(Logical3)

Logical4 = (2*x > 11)
Logical4
is.logical(Logical4)

Logical5 = (3*x < 20)
Logical5
is.logical(Logical5)

cat("\nWeek 4 complete.\n")
