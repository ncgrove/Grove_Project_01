###############################################################################
### file: 02_Exploratory
### authors: Nathan Grove
### creation date: 9/11/2020
### description: Exploration of lead-iq.csv
###############################################################################

# Need: A. Graph(s) of IQ level by location status
#       B. At least one table using "kable" funciton
#       C. Few sentences of text in body of markdown
#           document describing graph(s) and table(s)
#       D. Inline calculations of means, that will be 
#           updated if data are changed
#       E. At least one R code chunk 


#Creating matrix of summary statistics to be used in kbl() function

Distance_matrix<-matrix(rep(NA,8), nrow=2)

colnames(Distance_matrix)<-c("n", "Mean IQ", "SD", "Range")

rownames(Distance_matrix)<-c("Near", "Far")

Distance_matrix[1,1]<-length(Near_vect)
Distance_matrix[2,1]<-length(Far_vect)

Distance_matrix[1,2]<-round(mean(Near_vect), digits=2)
Distance_matrix[2,2]<-round(mean(Far_vect), digits=2)

Distance_matrix[1,3]<-round(sd(Near_vect), digits=2)
Distance_matrix[2,3]<-round(sd(Far_vect), digits=2)

Distance_matrix[1,4]<-max(Near_vect)- min(Near_vect)
Distance_matrix[2,4]<-max(Far_vect)- min(Far_vect)

# Creating kbl() table of Distance_matrix

Distance_matrix %>%
  kbl(caption= "Summary Statistics of Data by Distance from Smelter") %>%
  kable_classic_2(full_width= TRUE, lightable_options= "striped", 
                  col_label_position="r")


  


