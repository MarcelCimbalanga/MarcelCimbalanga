##a dotplot graph of Concentration of CO2 in BOD datasets
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


