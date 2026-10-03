# R PROGRAMMING NPTEL - WEEK 1

cat("=== NPTEL WEEK 1: INTRODUCTION, HELP, LIBRARIES, SCRIPTS ===\n")

# 1. Basic R usage / command line

2 + 3
x <- 20
y = x * 2
z = x + y
x
y
z

# R is case-sensitive:
X <- 20
x <- 20
X
x

# 2. Getting help in R

# Help for a specific function:
?read.table

# Search by topic:
help.search("data input")

# General online help:
help(mean)

# HTML help browser:
# help.start()

# Find which package contains a function:
find("lowess")

# Find objects/functions matching a name pattern:
apropos("lm")

# See a worked example:
example(lm)

# Demonstrations from the PDF:
# demo(persp)       # 3D surface-plot demonstration
# demo(graphics)    # graphics demonstration

# 3. Packages / libraries

# Load a library:
library(spatial)

# Description of a package:
packageDescription("spatial")

# Contents of a package:
library(help = spatial)

# Examples mentioned in the PDF:
# MASS   -> statistical package
# mgcv   -> generalized additive models
# spatial -> spatial analysis
# boot    -> bootstrapping

# Install packages (shown in the PDF; left commented for safety):
# install.packages("boot")
# install.packages("cluster")

# See installed packages:
installed.packages()

# Remove a package (PDF example; commented so it is not destructive):
# remove.packages("cluster")

# Update a package (PDF example; commented):
# update.packages("cluster")

# Unload a package:
# detach("package:cluster", unload = TRUE)

# 4. Command line vs scripts

# Multi-line code is easier to maintain in a script like this.
# In the R GUI, the PDF shows File -> New script and Ctrl+R
# for running highlighted code.
#
# RStudio is an IDE for working with R.

# A small script example:
numbers <- c(2, 4, 6, 8)
mean(numbers)

cat("\nWeek 1 complete.\n")
