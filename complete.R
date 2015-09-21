complete <- function(directory, id = 1:332) {
  
  file_list <- list.files(directory, full.names = TRUE)
  file_list <- file_list[grepl(".csv",file_list)]
  file_list <- do.call(rbind, lapply(file_list, read.csv, header = TRUE))

  list_subset <- file_list[which(file_list[, "ID"] %in% id),]
  # subset list to just the IDs in question
  
  dat <- aggregate(complete.cases(list_subset[,2:3]),by=list(list_subset$ID),FUN="sum", na.rm = TRUE)
 # aggregate together the sum of all the complete cases by ID
  
  colnames(dat) <- c("id","nobs")
  #rename column names to match assignment
  
  dat <- dat[order(id),]
  #order by how ID is listed
  
  dat
  
}