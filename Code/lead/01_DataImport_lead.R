###############################################################################
### file: 01_DataImport
### authors: Nathan Grove
### creation date: 9/11/2020
### description: Data Import of lead-iq-01.csv
###############################################################################


# Need: A. Graph(s) of IQ level by location status
#       B. At least one table using "kable" funciton
#       C. Few sentences of text in body of markdown
#           document describing graph(s) and table(s)
#       D. Inline calculations of means, that will be 
#           updated if data are changed
#       E. At least one R code chunk 


setwd("C:/Users/ncgro/Desktop/BIOS 6621/Projects/Grove_Project_01/DataRaw")

library(plotrix)
library(markdown)
library(knitr)
library(rmarkdown)
library(kableExtra)

head(read.csv("lead-iq-01.csv"))

lead<-read.csv("lead-iq-01.csv")

################################################################################
# Create submatrix according to "Near" or "Far"
Near_list<-lead[which(lead$Smelter=="Near"),]
Far_list<-lead[which(lead$Smelter=="Far"),]
################################################################################

################################################################################
# Create vector of IQ column of "Far_list" and
#   "Near_list", and combine that into new list "Distance_list
#   so gap.boxplot will make a boxplot with a gap in the y-axis.

Near_vect<-Near_list[,2]
Far_vect<-Far_list[,2]
Distance_list<-list(Near=Near_vect, Far=Far_vect)
################################################################################

################################################################################
# Means, SD, Range of Near_list and Far_list IQ, rounded to
#   2 decimal places
Mean_Near_IQ<-round((mean(Near_list$IQ)),
                    digits=2)
Mean_Far_IQ<-round((mean(Far_list$IQ)),
                    digits=2)

SD_Near_IQ<-round((sd(Near_list$IQ)),
                    digits=2)
SD_Far_IQ<-round((sd(Far_list$IQ)),
                    digits=2)

Range_Near_IQ<- max(Near_list$IQ)-
              min(Near_list$IQ)
Range_Far_IQ<- max(Far_list$IQ)-
              min(Far_list$IQ)
################################################################################

###############################################################################
#Creating matrix of summary statistics to be used in kbl() function

Distance_matrix<-matrix(rep(NA,8), nrow=2)

colnames(Distance_matrix)<-c("n", "Mean IQ", "SD", "Range")

rownames(Distance_matrix)<-c("Near", "Far")

# Col 1 n
Distance_matrix[1,1]<-length(Near_vect)
Distance_matrix[2,1]<-length(Far_vect)

# Col 2  mean
Distance_matrix[1,2]<-round(mean(Near_vect), digits=2)
Distance_matrix[2,2]<-round(mean(Far_vect), digits=2)

# Col 3 sd
Distance_matrix[1,3]<-round(sd(Near_vect), digits=2)
Distance_matrix[2,3]<-round(sd(Far_vect), digits=2)

# Col 4 range
Distance_matrix[1,4]<-max(Near_vect)- min(Near_vect)
Distance_matrix[2,4]<-max(Far_vect)- min(Far_vect)
###############################################################################


