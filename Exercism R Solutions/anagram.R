anagram <- function(subject, candidates) {
  #first convert the vector to a list of words
  candidates <- as.list(candidates)
  
  #ordering the subject input
  subject <- tolower(subject)
  subject_lets <- unlist(strsplit(subject, ""))
  subject_order <- sort(subject_lets)
  subject2 <-  paste(subject_order, collapse = "")
  result <- c() #used later to store list of words for results
  
  #iterate through the list of candidates
  for(i in candidates){
    word = unlist(strsplit(i, ""))
    word = tolower(word)
    word = sort(word)
    
    word2 = paste(word, collapse = "")
    
    #determine if the words are equal when sorted
    #excluding the exact same word in dif cases
    if(word2 == subject2 && tolower(i) != tolower(subject)){
      
      #add the correct word to a list
      result = c(result, i)
      
      #reiterate to see if other words match
      next
    }
    
  }
  print(result)
}


#tests
subject <- "corn"
candidates <- c("corn", "dark", "Corn", "rank", "CORN", "cron", "park")
anagram(subject, candidates)
    #c("cron") - it should not return the identical word



subject <- "nose"
candidates <- c("Eons", "ONES")
anagram(subject, candidates)
#c("Eons", "ONES")

subject <- "ant"
candidates <- c("tan", "stand", "at")
anagram(subject, candidates)
  #c("tan")  -  for some reason the program says this is not returning


subject <- "solemn"
candidates <- c("lemons", "cherry", "melons")
anagram(subject, candidates)
  #c("lemons", "melons")

subject <- "diaper"
candidates <- c("hello", "world", "zombies", "pants")
anagram(subject, candidates)

