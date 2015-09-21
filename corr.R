corr <- function(directory, threshold = 0) {
  
  #file_list <- list.files(directory, full.names = TRUE)
  #file_list <- file_list[grepl(".csv",file_list)]
  #file_list <- do.call(rbind, lapply(file_list, read.csv, header = TRUE))
  
  completes <- complete(directory, 1:332)
  completes < subset(completes, nobs > threshold)
  head(completes)

}