#PART 1

pollutantmean <- function(directory, pollutant, id = 1:332) {
  analysis_data <- data.frame()
  data_frame_names <- list.files(pattern = "*.csv")
  for(i in id){
  analysis_data <- rbind(read.csv(data_frame_names[i]),analysis_data)
  }
  mean(analysis_data[ , pollutant], na.rm = TRUE)
}

#PART 2