###############################################################################
### file: 02_Exploratory
### authors: Nathan Grove
### creation date: 9/7/2020
### description: Exploration of titanic.csv
###############################################################################

# Class 1=1st, 2=2nd, 3=3rd, 4=Crew
# Sex 1=Male, 0=Female
# Age 1=Adult, 0=Child
# Survived 1=Survived, 0=Died

# Bar plot comparing numbers of each passenger type
barplot(c(no_1st_Class, no_2nd_Class, no_3rd_Class, no_Crew), 
        names.arg=c("1st Class", "2nd Class", "3rd Class", "Crew"), 
        xlab="Passenger Type", ylab="Number of Passengers", ylim=c(0,1000), 
        main="Number of Passengers by Passenger Type")

# Pie chart comparing numbers of each passenger type
pie(c(no_1st_Class, no_2nd_Class, no_3rd_Class, no_Crew), 
    labels=c("1st Class 14.77%", "2nd Class 12.95%", "3rd Class 32.08%",
    "Crew 40.21%"), col=rainbow(4), main="Percent of Passenger Type")

# Bar plot comparing numbers of passengers by Age
barplot(c(no_Adult, no_Children), names.arg=c("Adult", "Children"), 
        xlab="Age", ylab="Number of Passengers", ylim=c(0,2200), 
        main="Number of Passengers by Age")

# Pie chart comparing numbers of passengers by Age
pie(c(no_Adult, no_Children), labels=c("Adult 95.05%", "Child 4.95%"), 
        col=rainbow(4), main="Percent of Passenger Age")

# Bar plot comparing numbers of passengers by Sex
barplot(c(no_Males, no_Females), names.arg=c("Male", "Female"),
        xlab="Sex", ylab="Number of Passengers", ylim=c(0,2000),
        main="Number of Passengers by Sex")

# Pie chart comparing numbers of passengers by Sex
pie(c(no_Males, no_Females), labels=c("Males 78.65%", "Females 21.35%"), 
         col=rainbow(4), main="Percent of Passenger Sex")