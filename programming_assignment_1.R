#PART 1

pollutantmean <- function(directory, pollutant, id = 1:332) {
 file <- gzfile("specdata")
  for(i in id) {
    rbind(x, read.csv(cat(directory,"/",i,".csv")))
  }
}

#PART 2