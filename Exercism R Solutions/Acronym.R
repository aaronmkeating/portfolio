acronym <- function(input) {
  input2 <- gsub("-", " ", input)
  input2 <- gsub("_", " ", input2)
  #There are a number of possible symbols that could be added
  #by the user. Below is an example of why "_" was added. 
  words_string <- unlist(strsplit(input2, " "))
  acc1 <- substring(words_string, 1, 1)
  accronym <- character(0)
  for (i in acc1) {
    accronym <- paste(accronym, i, sep = "")
  }
  print(toupper(accronym))
  
}

acronym("The Road _Not_ Taken")
