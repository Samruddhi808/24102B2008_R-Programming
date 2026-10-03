# R PROGRAMMING NPTEL - WEEK 6

cat("=== NPTEL WEEK 6: LOOPS, FUNCTIONS AND SEQUENCES ===\n")

# PART A: FOR LOOP

# Syntax:
# for (name in vector) {commands to be executed}

# Example 1:
for (i in 1:5) {
  print(i^2)
}

# Example 2:
for (i in c(2,4,6,7)) {
  print(i^2)
}

# Example 3: function + for + if
x = c(2,4,6,8,10,12)

excount = function(x){
  count = 0
  for (xval in x) {
    if(xval/2 > 3)
      count = count+1
  }
  print(count)
}

excount(x)

# 2. Nested for loop

child = c("child1", "child2", "child3")
sweet = c("sweet1", "sweet2", "sweet3")

for (x in child) {
  for (y in sweet) {
    print(paste(x, y))
  }
}

# 3. break

drink = c("coffee", "lemonade", "tea", "juice")

for (x in drink) {
  if (x == "tea") {
    break
  }
  print(x)
}

# 4. next

drink = c("coffee", "lemonade", "tea", "juice")

# Skip lemonade:
for (x in drink) {
  if (x == "lemonade") {
    next
  }
  print(x)
}

# Skip tea:
for (x in drink) {
  if (x == "tea") {
    next
  }
  print(x)
}

# PART B: WHILE LOOP

# Example 1:
i = 1
while (i < 10) {
  print(i^2)
  i = i+2
}

# Example 2 from the PDF.
# The original asks for user input. To keep this script non-interactive,
# the same logic is demonstrated with number = 22.

sumfunction = function(number = 22){
  sum = 0
  while (number <= 25) {
    sum = sum + number
    number = number + 1
  }
  print(paste("The sum of numbers received from the While Loop: ", sum))
}

sumfunction(22)
22+23+24+25

# Original interactive version from the PDF:
# sumfunction = function(){
#   sum = 0
#   number = as.integer(readline(prompt="Please select any number less than 25: "))
#   while (number <= 25) {
#     sum = sum + number
#     number = number + 1
#   }
#   print(paste("The sum of numbers received from the While Loop: ", sum))
# }
# sumfunction()

# PART C: REPEAT LOOP

# Example 3:
i = 1
repeat{
  print(i^2)
  i = i+2
  if (i > 10)
    break
}

# Example 4: repeat + next + break
i = 1
repeat{
  i = i+1
  if (i < 10) next
  print(i^2)
  if (i >= 13) break
}

# PART D: FUNCTIONS

# Functions are groups of commands that take arguments,
# perform calculations and return a result.

# Single-variable function:
abc = function(x){
  x^2
}

abc(3)
abc(6)
abc(9)

# Two-variable function:
abc = function(x,y){
  x^2+y^2
}

abc(3,4)
abc(10,10)
abc(-2,-3)

# Another function from the PDF:
abc = function(x){
  sin(x)^2+cos(x)^2+x
}

abc(9)
abc(99)
abc(-15)

# Function without an argument:
abc = function() {
  for(i in 1:3) {
    print(i^3)
  }
}

abc()

# PART E: SEQUENCES

# Help:
help("seq")

# Default increment +1 or -1:
seq(from=2, to=4)
seq(from=4, to=2)
seq(from=-4, to=4)

# Constant increment:
seq(from=10, to=20, by=2)

# Constant decrement:
seq(from=20, to=10, by=-2)

# Fractional decrement:
seq(from=3, to=-2, by=-0.5)

# Predefined length:
seq(to=10, length=10)
seq(from=10, length=10)

# Fractional increment:
seq(from=10, length=10, by=0.1)

# Constant decrement with predefined length:
seq(from=10, length=10, by=-2)

# Fractional decrement with predefined length:
seq(from=10, length=5, by=-.2)

cat("\nWeek 6 complete.\n")
