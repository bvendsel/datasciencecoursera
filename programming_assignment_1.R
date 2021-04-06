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
  analysis_data <- data.frame()
  data_frame_names <- list.files(pattern = "*.csv")
  for(i in id){
    analysis_data <- rbind(read.csv(data_frame_names[i]),analysis_data)
  }
  
  }