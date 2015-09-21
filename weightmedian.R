weightmedian <- function(directory,day) {
  files_list <- list.files(directory, full.names = TRUE)
  #creates a list of files
  
  num_files <- length(files_list) #counts the number of files
  dat <- data.frame() #creates a blank data frame
 
   for (i in 1:num_files) {
    #loops through the files, rbinding them together
    dat <- rbind(dat, read.csv(files_list[i]))
   }
  
  dat_subset <- dat[which(dat[, "Day"] == day),] 
  #subsets the rows that match the day argument
  median(dat_subset[, "Weight"], na.rm = TRUE)
  #finds the median weight while stripping out the NAs
}