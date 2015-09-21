pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  file_list <- list.files(directory, pattern="*.csv", full.names = TRUE)
  file_list <- file_list[grepl(".csv",file_list)]
  file_list <- do.call(rbind, lapply(file_list, read.csv, header = TRUE))
#  num_files <- length(file_list)
 # dat <- data.frame()
  
 # for (i in 1:num_files) {
  #  dat <- rbind(dat, read.csv(file_list[i]))
#  }
  
  dat_subset <- file_list[which(file_list[, "ID"] %in% id),]
  
  mean(dat_subset[,pollutant], na.rm = TRUE)
}