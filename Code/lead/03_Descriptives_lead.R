###############################################################################
### file: 02_Exploratory
### authors: Nathan Grove
### creation date: 9/2/2020
### description: Exploration of lead-iq.csv
###############################################################################


# Need: A. Graph(s) of IQ level by location status
#       B. At least one table using "kable" funciton
#       C. Few sentences of text in body of markdown
#           document describing graph(s) and table(s)
#       D. Inline calculations of means, that will be 
#           updated if data are changed
#       E. At least one R code chunk 


# Boxplot of IQ values for Near and Far. If 999 outlier present, display
#   boxplot with gap in y axis to better display non-outlier data. If 999
#   outlier absent, display boxplot with standard scale.

if(max(lead$IQ==999)){

  gap.boxplot(Distance_list, gap=list(top=c(150,990), bottom=c(NA,NA)), 
            names=c("Near","Far"), main="Distribution of IQ by Distance",
            ylab="IQ")
  
  axis.break(axis=2, breakpos=151, style="zigzag")

  } else {
              
    boxplot(Distance_list, main="Distribution of IQ by Distance", 
            xlab=" Distance", ylab="IQ")}

# Creating kbl() table of Distance_matrix. Inputs variable with changes to data.

Distance_matrix %>%
  kbl(caption= "Summary Statistics: IQ vs Distance",
                  align="c") %>%
  kable_classic_2(full_width= FALSE, lightable_options= "striped", 
                  font_size= 20)





