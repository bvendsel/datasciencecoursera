#PART 1

pollutantmean <- function(directory, pollutant, id = 1:332) {
  #setwd(paste(getwd(),"/",directory,sep=""))
  analysis_data <- data.frame()
  data_frame_names <- list.files(pattern = "*.csv")
  for(i in id){
  analysis_data <- rbind(read.csv(data_frame_names[i]),analysis_data)
  }
  mean(analysis_data[ , pollutant], na.rm = TRUE)
}

#PART 2
#Write a function that reads a directory full of files and reports the number of 
#completely observed cases in each data file. The function should return a data 
#frame where the first column is the name of the file and the second column is 
#the number of complete cases. 

complete <- function(directory, id = 1:332){ 
  analysis_data <- data.frame(matrix(ncol=2,nrow=0))
  names(analysis_data) <- c("id","nobs") 
  data_frame_names <- list.files(pattern = "*.csv")
  for(i in id){
    analysis_data <- rbind(analysis_data,c(i,sum(complete.cases(read.csv(data_frame_names[i])))))
  }
  return(analysis_data)
}

#PART 3
# Write a function that takes a directory of data files and a threshold for 
# complete cases and calculates the correlation between sulfate and nitrate for 
# monitor locations where the number of completely observed cases 
# (on all variables) is greater than the threshold. The function should return a 
# vector of correlations for the monitors that meet the threshold requirement. 
# If no monitors meet the threshold requirement, then the function should return 
# a numeric vector of length 0.

#####
#Need to make it so that this function does the corr for each file - not for the total data frame
#####


corr <- function(directory, threshold = 0) {
  analysis_data <- data.frame()
  data_frame_names <- list.files(pattern = "*.csv")
  for(i in length(data_frame_names)) {
    if(sum(complete.cases(read.csv(data_frame_names[i]))) >= threshold){
      analysis_data <- rbind(read.csv(data_frame_names[i]),analysis_data)
    } else {
    }
  
  }
  cor(analysis_data$sulfate,analysis_data$nitrate, use = "complete.obs")
}