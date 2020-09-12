###############################################################################
### file: 01_DataImport
### authors: Nathan Grove
### creation date: 9/7/2020
### description: Data Import of titanic.csv
###############################################################################

setwd("C:/Users/ncgro/Desktop/BIOS 6621/Week 1")

head(read.csv("titanic.csv", header=TRUE))

titanic<-read.csv("titanic.csv", header=TRUE)

Class<-ifelse(titanic$ï..Class=="3rd", 3, ifelse(titanic$ï..Class=="2nd", 2, 
        ifelse(titanic$ï..Class=="1st", 1, 4)))

no_1st_Class<-length((1:length(Class))[Class==1])
prop_1st_Class<-length((1:length(Class))[Class==1])/2201
perc_1st_Class<-paste(prop_1st_Class*100, "%", sep="")

no_2nd_Class<-length((1:length(Class))[Class==2])
prop_2nd_Class<-length((1:length(Class))[Class==2])/2201
perc_2nd_Class<-paste(prop_2nd_Class*100, "%", sep="")

no_3rd_Class<-length((1:length(Class))[Class==3])
prop_3rd_Class<-length((1:length(Class))[Class==3])/2201
perc_3rd_Class<-paste(prop_3rd_Class*100, "%", sep="")

no_Crew<-length((1:length(Class))[Class==4])
prop_Crew<-length((1:length(Class))[Class==4])/2201
perc_Crew<-paste(prop_Crew*100, "%", sep="")

Sex<-ifelse(titanic$Sex=="Male", 1, 0)

no_Males<-length((1:length(Sex))[Sex==1])
prop_Males<-length((1:length(Sex))[Sex==1])/2201
perc_Males<-paste(prop_Males*100, "%", sep="")

no_Females<-length((1:length(Sex))[Sex==0])
prop_Females<-length((1:length(Sex))[Sex==0])/2201
perc_Females<-paste(prop_Females*100, "%", sep="")

Age<-ifelse(titanic$Age=="Adult", 1, 0)

no_Adult<-length((1:length(Age))[Age==1])
prop_Adult<-length((1:length(Age))[Age==1])/2201
perc_Adult<-paste(prop_Adult*100, "%", sep="")

no_Children<-length((1:length(Age))[Age==0])
prop_Children<-length((1:length(Age))[Age==0])/2201
perc_Children<-paste(prop_Children*100, "%",sep="")

Survived<-ifelse(titanic$Survived=="Survived", 1, 0)

# Class 1=1st, 2=2nd, 3=3rd, 4=Crew
# Sex 1=Male, 0=Female
# Age 1=Adult, 0=Child
#Survived 1=Survived, 0=Died


