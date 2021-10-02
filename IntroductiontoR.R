##a dot plot graph of Concentration of CO2 in BOD datasets
ggplot(CO2, aes(conc, uptake, colour = Treatment)) +
  geom_point(size = 3) + 
  geom_smooth(method = lm, se = F) +
 facet_wrap(~Type) +
  labs(title = "Concentration of CO2") +
  theme_bw()

## same graph on a different theme
ggplot(CO2, aes(conc, uptake, colour = Treatment)) +
  geom_point(size = 3) + 
  geom_smooth(method = lm, se = F) +
  facet_wrap(~Type) +
  labs(title = "Concentration of CO2") +
  theme_classic()


## a boxplot of Treatment against uptake in CO2
ggplot(CO2, aes(Treatment, uptake)) +
  geom_boxplot() +
  geom_point(aes(size = conc, colour = Plant))



## using help function to plot a scatter graph
?qplot
qplot(mpg, wt, data = mtcars, colour = cyl)


##  a bar chart of mammals total amount of sleep in the msleep dataset
qplot(msleep$sleep_total)


## a dot graph of total amount of sleep against time spent awake
qplot(msleep$sleep_total, msleep$awake)


## Combining three vectors to become a 3×5 matrix

a <- c(1, 2, 3, 4, 5)
b <- c(6, 7, 8, 9, 10)
c <- c(11, 12, 12, 13, 14) 
rbind(a, b, c)
plot(a, b, c)


## Data frames which contain details of 5 employees and display the details.
data_frame = data.frame(Name=c("Marcel C","Yannick M","Charlotte L", "sarah F","James M"),
                        Gender=c("M","M","F","F","M"),
                        Age=c(23,22,25,26,32),
                        Length_of_service=c("3 years","15 years","16 years","20 years","5 years"))
print(data_frame)



## create a simple bar plot of five subjects
marks = c(70, 62, 85, 74, 70)
barplot(marks,
        main = "Comparing marks of 5 subjects",
        xlab = "Subjects",
        ylab = "Marks",
        names.arg = c("English", "Science", "Math.", "Hist", "Geo"),
        col = "darkred",
        horiz = FALSE)


## A program to take input from the user (name and age) and display the values
name <- readline(prompt="Enter your name: ")
age <- readline(prompt="Enter your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))


## A program to take input from the user (name and age) 
name <- readline(prompt="Enter your name: ")
age <- readline(prompt="Enter your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))


##  A program to create a sequence of numbers from 20 to 50 
## and find the mean of numbers from 20 to 50 and sum of numbers
print(seq(20,50))
print(mean(20:60))
print(sum(51:91))


## A program to create a vector which contains 10 random integer values between -50 and +50
v <- sample(-50:50, 10, replace=TRUE)
print(v)

