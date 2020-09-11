###############################################################################
### file: 02_Exploratory
### authors: Nathan Grove
### creation date: 9/7/2020
### description: Exploration of titanic.csv
###############################################################################

# Class 1=1st, 2=2nd, 3=3rd, 4=Crew
# Sex 1=Male, 0=Female
# Age 1=Adult, 0=Child
#Survived 1=Survived, 0=Died

# Class summary statistics

# Number of 1st Class, proportion of whole
length((1:length(Class))[Class==1])
length((1:length(Class))[Class==1])/2201

# Number of 2nd Class, proportion of whole
length((1:length(Class))[Class==2])
length((1:length(Class))[Class==2])/2201

# Number of 3rd Class, proportion of whole
length((1:length(Class))[Class==3])
length((1:length(Class))[Class==3])/2201

# Number of Crew, proportion of whole
length((1:length(Class))[Class==4])
length((1:length(Class))[Class==4])/2201


# Age summary statistics

# Number of Adults, proportion of whole
length((1:length(Age))[Age==1])
length((1:length(Age))[Age==1])/2201

# Number of Children, proportion of whole
length((1:length(Age))[Age==0])
length((1:length(Age))[Age==0])/2201


#Sex Summary statistics

# Number of Males, proportion of whole
length((1:length(Sex))[Sex==1])
length((1:length(Sex))[Sex==1])/2201

# Number of Females, proportion of whole
length((1:length(Sex))[Sex==0])
length((1:length(Sex))[Sex==0])/2201





