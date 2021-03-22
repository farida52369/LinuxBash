# Create data for the graph.
x <- c(21, 62, 10, 53)

labels <- c("London","New York","Singapore","Mumbai")
piepercent<- round(100*x/sum(x), 1)

# Give the chart file a name.
png(file = "city_percentage_legends.jpg")


# Plot the chart.
pie(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)),
    clockwise = TRUE)
legend("topright", cex = 1, labels, fill = rainbow(length(x)))

# Save the file.
dev.off()

?pie
?legend

data(plotrix)

library(plotrix)
?pie3D
pie3D(x, labels = piepercent, main = "City pie chart", col = rainbow(length(x)))


x <- seq(-10, 10, by = .1)
y <-dnorm(x, mean = 2.5, sd = 0.5)
plot(x, y)

xAxis <- seq(-10, 10, by = .2)
probability <- pnorm(xAxis, mean = 2.5, sd = 2)
plot(xAxis, probability)

prob <- seq(0, 1, by = .02)
xValue <- qnorm(prob, mean = 2, sd = 1)
plot(prob, xValue)


sample_size <- rnorm(100, mean = 2, sd = 1)
print(sample_size)
hist(sample_size, main = "Normal Distribution")

xbinomial <- seq(0, 50, by = 1)
ybinomial <- dbinom(xbinomial, 50, .3)
plot(xbinomial, ybinomial)

probabilityBinomial <- pbinom(xbinomial, 50, .5)
plot(xbinomial, probabilityBinomial, main = "Binomial Distribution")

inverseOfProb <- qnorm(probabilityBinomial, 50, .5)
plot(probabilityBinomial, inverseOfProb)

events <- 0:30
dpoisson <- dpois(events, 3)
plot(events, dpoisson)

ppoisson <- ppois(events, 3)
plot(events, ppoisson)

qpoisson <- qpois(ppoisson, 3)
plot(events, qpoisson)

rpoisson <- rpois(30, 3)
plot(events, rpoisson)


# ############################### PIE CHART
x <- c(21, 62, 10, 53)
label <- c("London", "NewYork", "Egypt", "Aswan")
piepercent <- round(100*x/sum(x), 1)
pie(x, label = piepercent, main = "City Pie Chart", col = rainbow(length(x)))
legend("topright", label, cex = 0.8, fill = rainbow(length(x)))



# ############################### BAR PLOT
# Input
color <- c("orange", "green", "brown")
month <- c("March", "April", "May", "June", "July")
region <- c("East", "West", "North")

# Values
value <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), 
                nrow = 3, ncol = 5, byrow = TRUE)
barplot(value, main = "barPlot For Total revenue", names.arg = month, 
        xlab = "Month", ylab = "revenue", col = color)
legend("topleft", region, cex = 1.5, fill = color)



# ################################### BOX PLOT
data("mtcars")
input <- mtcars[, c("mpg", "cyl")]
print(head(input))

boxplot(mpg ~ cyl, data = input, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")



# ##################################### HISTOGRAM
v <- c(9,13,21,8,36,22,12,41,31,33,19)
hist(v, xlab = "Weight", col = "red", border = "blue", xlim = c(0, 40)
     , ylim = c(0, 5), breaks = 20)




# ################################### LINES
inp1 <- c(7,12,28,3,41)
inp2 <- c(14,7,6,19,3)
plot(inp1, 
     type = "o",
     col = "red",
     xlab = "Month",
     ylab = "Rain Fall",
     main = "Rain Fall Chart")

# TO ADD ANOTHER VARIABLE
lines(inp2, type = "o", col = "blue")

# ################################## SCATTER 
data2 <- mtcars[,c("wt", "mpg")]
print(head(data2))

plot(x = data2$wt, y = data2$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5, 5),
     ylim = c(15, 30),
     main = "Weight vs Milage mtcars Data")


pairs(~wt+mpg+disp+cyl+vs, data = mtcars, 
      main = "ScatterPlot Matrix")


# ####################### PERMUTATION
library(gtools)

# Permutations
o <- c("red", "blue", "black")
permutations(n = 3, r = 2, v = o, repeats.allowed = T)
# nrow(v)  # v = permutations(n = 3, r = 2, v = o, repeats.allowed = T)

permutations(n = 3, r = 2, v = o)
# nrow(v)  #permutations(n = 3, r = 2, v = o)

# Combinations with repetition
combinations(n = 3, r = 2, v = o, set = TRUE, repeats.allowed = TRUE)

# Combinations without repetition
combinations(n = 3, r = 2, v = o, set = TRUE, repeats.allowed = F)


# #########################  Loading Data
data("iris")
print(iris)
print(head(iris))
print(head(iris, 3))
print(str(iris))
print(names(iris))

# ########################## DEEPLAYER
library(dplyr)
data = iris["Sepal.Length"]
data_iris = iris[c("Sepal.Length", "Species")]
data_selection = select(iris, "Sepal.Length", "Species")

data_filteration = filter(iris, Species == "setosa")

firstSpecie = iris[1, "Species"]
secondSpecie = iris[51, "Species"]
firstAndThird = iris[c(1, 3), "Species"]

top5 = iris[1:5, "Species"]

specie_Ascending_order = iris[order(iris["Sepal.Length"]),]

specie_Descending_order = iris[order(-iris["Sepal.Length"]),]

iris$Sepal.Length




# ########################## 1-LOADING DATA
library(datasets)
data("mtcars")  # LOADING THE BUILT-IN LIBRARY

head(mtcars)  # TO SHOW THE FIRST 6 ROWS IN THE DATASET
names(mtcars)   # TO SHOW THE NAMES OF THE COLUMNS
dim(mtcars)    # TO SHOW THE DIMENSIONS OF THE DATA SET
str(mtcars)   # TO SHOW ABSTRACTION OF THE DATA SET



# ####################### 2-EXTRACTING DATA
library(dplyr)   # LOADING THE DATA "dplyr"
library(datasets)
data("mtcars")

# NUM 1
# FILTERATION TO THE SET OF EACH TYPE OF TRANSMISSION
manual = filter(mtcars, am == 1)    
automatic = filter(mtcars, am == 0)
# DISPLAYING THE DATA
print(head(manual))
print(head(automatic))

# NUM2
# SORTING THE DATA AT FIRST
dispSorting = mtcars[order(-mtcars["disp"]),]
hpSorting = mtcars[order(-mtcars["hp"]),]
dratSorting = mtcars[order(-mtcars["drat"]),]

### FIRST METHOD  -- USING head() BUILT-IN FUNCTION
print(head(dispSorting, 10))
print(head(hpSorting, 10))
print(head(dratSorting, 10))

# SECOND METHOD -- USING INDEXING
print(dispSorting[1:10,])
print(hpSorting[1:10,])
print(dratSorting[1:10,])

# ## NUM 3 -- DISPLAYING THE mpg ABOVE THE AVERAGE ONLY
averageOfMPG = mean(mtcars$mpg)
aboveAverageMPG = filter(mtcars, mpg > averageOfMPG)
print(aboveAverageMPG)

# NUM 4
# PIE CHART ISN'T SO USEFUL BUT IN (vs, cyl, am, gear, carb) COLUMS 
# AS THESE COLUMS HAVE FEATURES IN INTEGER NUMBERS 
# WITH REPETITION
# vs COLUMN
vs <- table(mtcars$vs)
pie(vs, main = "Pie Chart For VS Column 'mtcarts' ")

# cyl COLUMN
cyl <- table(mtcars$cyl)
pie(cyl, main = "Pie Chart For Cyl Column 'mtcars'")

# am COLUMN
am <- table(mtcars$am)
pie(am, main = "Pie Chart For Am Column 'mtcars'")

# gear COLUMN
gear <- table(mtcars$gear)
pie(gear, main = "Pie Chart For Gear Column 'mtcars'")

# carb COLUMN
carb <- table(mtcars$carb)
pie(carb, main = "Pie Chart For Carb Column 'mtcars'")



# (mpg, disp, drat, wt, qsec, hp) COLUMNS SHOW THE FEATURES
# AS THE NUMBERS AREN,T SPECIFICAND THEIR VALUES ARE DIFFERENT 

# mpg COLUMN
mpg <- mtcars$mpg
hist(mpg, xlab = "MPG", 
     xlim = c(10, 35), 
     ylim = c(0, 10), 
     breaks = 15, 
     col = "lightpink",
     border = "darkcyan", 
     main = "Histogram 'mtcars' For MPG")



# disp COLUMN
disp <- mtcars$disp
hist(disp, xlab = "DISP",
     xlim = c(50, 500),
     ylim = c(0, 6),
     breaks = 15,
     col = "lightpink",
     border = "darkcyan", 
     main = "Histogram 'mtcars' For DISP")

# drat COLUMN
drat <- mtcars$drat
hist(drat, xlab = "DRAT",
     xlim = c(2.5, 5.5),
     ylim = c(0, 10),
     breaks = 15,
     col = "lightpink",
     border = "darkcyan", 
     main = "Histogram 'mtcars' For DRAT")

# wt COLUMN
wt <- mtcars$wt
hist(wt, xlab = "WT",
     xlim = c(1, 6),
     ylim = c(0, 9),
     breaks = 15,
     col = "lightpink",
     border = "darkcyan", 
     main = "Histogram 'mtcars' For WT")

# qsec COLUMN
qsec <- mtcars$qsec
hist(qsec, xlab = "QSEC",
     xlim = c(13, 24),
     ylim = c(0, 7),
     breaks = 15,
     col = "lightpink",
     border = "darkcyan", 
     main = "Histogram 'mtcars' For QSEC")

# hp COLUMN
hp <- mtcars$hp
hist(hp, xlab = "HP",
     xlim = c(20, 300),
     ylim = c(0, 8),
     breaks = 15,
     col = "lightpink",
     border = "darkcyan", 
     main = "Histogram 'mtcars' For HP")



# NUM 5
# BOXPLOTS AND EXTRACTING THE 3 MAIN PERCENTILES
# THE MAIN 3 PERCENTILES (Q1, MEDIAN, Q3) 
# InterQuartile Range = Q3-Q1 -- IQR IS MORE RELIABLE THAN THE RANGE(Q4-Q1)
# THE MEDIAN IS THE BOLD LINE IN THE MIDDLE
# Q1 CLOSE TO THE ZERO (THE BORDER OF THE BOX)
# Q3 IS THE END BORDER OF THE BOX 
# disp COLUMN
boxplot(mtcars$disp, 
        data = mtcars, 
        ylab = "Displacement",
        main = "DISP in 'mtcars")

boxplot.stats(mtcars$disp)[1]$stats[c(2:4)]  

# qsec COLUMN
boxplot(mtcars$qsec,
        data = mtcars,
        ylab = "1/4 Miles time",
        main = "QSec in 'mtcars")
boxplot.stats(mtcars$qsec)[1]$stats[c(2:4)]  

# hp COLUMN
boxplot(mtcars$hp,
        data = mtcars,
        ylab = "Gross HorsePower",
        main = "HP in 'mtcars")

boxplot.stats(mtcars$hp)[1]$stats[c(2:4)]


# ################# DISTRIBUTIONS
# ###### PART A

sdWt = sqrt(var(mtcars$wt))
meanWt = mean(mtcars$wt)
(1 - pnorm(q = 3.4, mean = meanWt, sd = sdWt)) * 100


# ####### PART B
# OBSERVATION(SIZE) = 32
# THE PROBABILITY OF GETTING (0:18) MANNUAL CARS
sum(dbinom(x = 0:18, size = 32, prob = mean(mtcars$am)))


# ####### PART C
# PARKING SPOTS = 12
# FIVE POSSIBLE CARS
sum(dbinom(x = 0:4, size = 12, prob = 1/5))


# ################## PERMUTATIONS AND COMBINATIONS
library(gtools)
# ############# PART 1
# NUM OF DIGITS (0, 1, 2, 3, 4, 5, 6, 7, 8, 9) = 10
# R = 3 

# FIRST METHOD -- USING (gtools) LIBRARY -- permutations BUILT-IN FUNCTION
# WITHIN REPETITION
numSequence <- seq(0, 9)
permutations(n = 10, r = 3, v = numSequence, repeats.allowed = T)


# SECOND METHOD -- USING BUILT-IN FUNCTION -- expand.grid(NUM OF REPETITION)
expand.grid(numSequence, numSequence, numSequence)

# ################ PART 2
# FIRST METHOD USING "gtools" LIBRARY
# THE SEQUENCE NUMBERS ARE(1, 2, 3, 4, 5, 6, 7, 8, 9)
seqNums = seq(1, 9)
allPossibleCombinations = combinations(n = 9, r = 3, v = seqNums)

# THE PROB TO GET 3 NUMBERS 
# THE MININMUM NUMBER IS 2 AND THE MAXIMUM NUMBER IS 5
# IF THE FIRST NUM == 2 & THE LAST == 5 
mean(allPossibleCombinations[,1] == 2 & allPossibleCombinations[,3] == 5)

# SECOND METHOD -- expand.grid() -- BUILT-IN FUNCTION
requiredCombinations = expand.grid(2, c(3, 4), 5)
# NUM OF ROWS IN requiredCombinations OVER allPossibleCombinations
# THE NAMES OF THE VARIABLES HOLDS THEIR MEANING
nrow(requiredCombinations) / nrow(allPossibleCombinations)

