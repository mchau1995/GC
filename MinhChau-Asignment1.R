##1. Between a vector and a matrix
##1. similarity : both of them are data structure, contain one data type
##1. difference : matrix has one more dimensional attribute compared with vector

##2. Between a data frame and a matrix
##2. similarity: both of them are two dimensional data structure
##2. difference: data frame can be used for different type of variables, while matrix is only used with one data type.

##3. Create a vector using (15, TRUE, "World"). What happened to your result?
my_vector <- c(15, TRUE, "World")
my_vector
##3. All components in vector change to character type, which are presented [1] "15"    "TRUE"  "World"

##4.
john_score <- c(95, 91, 88)
subjects <- c("Statistics", "Linear Algebra", "Calculus")
names(john_score) <- subjects
john_score

##5.Type of the vector: numeric
class(john_score)

##6. 
score <- c(c(95, 91, 88), c(96, 94, 97), c(88, 98, 85))
score_matrix <- matrix(score, nrow = 3, byrow = TRUE)
colnames(score_matrix) <- subjects
rownames(score_matrix) <- c("Student1", "Student2", "Student3")
score_matrix

##7.
score.df <- data.frame(t(score_matrix))
score.df

##8.Create three vectors using 5 countries (your choice) from the below given website. First vector should be country names, second vector should be the total number of cases and third vector should contain total number of deaths. Create a data frame using these vectors. 
country_names <- c("USA", "India", "Brazil", "Russia", "UK")
total_cases <- c(28453526, 10950201, 9979276, 4125598, 4071185)
total_deaths <- c(502544, 156038, 242178, 81926, 118933)	
covid_df <- data.frame(country_names, total_cases, total_deaths)
covid_df

##9. 
mtcars
head(mtcars, 2)
str(mtcars)
new_mtcars <- transform(mtcars, vs = as.factor(vs),cyl = as.factor(cyl),gear = as.factor(gear), carb = as.factor(carb))
str(new_mtcars)
