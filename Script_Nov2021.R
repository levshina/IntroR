###Basic classes and types

##Numeric vectors

vnum <- 1:5 

vnum
is(vnum)
class(vnum)
vnum^2
sqrt(vnum)
sort(vnum)
sum(vnum)

x <- c(8, 12, 9, 20)
x
class(x)


##Character vectors

cities <- c("Nijmegen", "Arnhem", "Utrecht")
cities
class(cities)

response <- c(TRUE, FALSE, TRUE, FALSE)
response
class(response)

##Factors

sex <- c("f", "m", "m", "f") #mind the quotes!
sex
class(sex)

sex.f <- factor(sex)
sex.f
class(sex.f)

#Turn a factor into a character vector

sex.c <- as.character(sex.f)
class(sex.c)


#Adding names to vector elements

ages <- c(20, 22, 18, 23)
ages

names(ages)[1] <- "Anneke"
ages

names(ages) <- c("Anneke", "Bert", "Claudia", "Dirk")
ages

#Subsetting vectors

ages[1] 

ages[c(2,4)] # only the 2nd and 4th element

ages[1:3] # 1st to 3rd element

ages[-2] 

ages["Bert"]

ages[c("Bert", "Anneke")]


##Matrices

ages <- c(20, 22, 18, 23)
RT <- c(455, 773, 512, 667) 
mymatrix <- cbind(ages, RT) #combine as columns
mymatrix

length(RT)
nrow(mymatrix)
ncol(mymatrix)
dim(mymatrix)


##Data frames

#repeat the code
ages <- c(20, 22, 18, 23)
RT <- c(455, 773, 512, 667) 

experiment <- data.frame(ages, RT)

experiment
class(experiment)

str(experiment)
summary(experiment)

#Turning a matrix into a data frame

class(mymatrix)
z <- as.data.frame(mymatrix)
z
class(z)


#Adding or changing row and column names

rownames(experiment)
colnames(experiment)

experiment
rownames(experiment) <- c("S01", "S02", "S03", "S04")
experiment
colnames(experiment)[1] <- "Age"
experiment

#Subsetting two-dimensional data

experiment[ , 1]

experiment[1, ] 

experiment[2, 1]

experiment[4, 2]

#Accessing columns of a data frame

experiment$RT

experiment$RT[2]

mean(experiment$RT)


#Lists

line1 <- c("I", "wandered", "lonely", "as", "a", "cloud")

line2 <- c("That", "floats", "on", "high", "o'ver", 
           "vales", "and", "hills", ",")

Wordsworth <- list(line1, line2)
Wordsworth

#Subsetting a list

Wordsworth[[2]]
Wordsworth[[2]][5] #5th word in 2nd line

unlist(Wordsworth)

###More on functions

#default values and order of arguments

sort(RT)
sort(x = RT, decreasing = FALSE)
sort(RT, decreasing = TRUE)

head(2, RT)
?head


###Randomness and reproducibility

sample(1:100, 10)

set.seed(1)
sample(1:100, 10)


###Important little things!

mydata <- 5
mydata

mydata<-5
mydata

mydata < - 10
mydata

myvector <- c(1, 2, 4)
myvector
myvector <- c(1,2,4)
myvector


ages <- c(9,10,4,2,1,9,8,6,4,10,31,6,8)

ages > 10
ages == 4
ages

ages = 4
ages

Ages

myletter <- "a"
myletter

myletter <- a
