is_isogram <- function(word) {
  #Need to ensure that the word is lowercase
  word = tolower(word)
  
  #Need to ignore "-" and spaces
  word = gsub("-", "", word)
  word = gsub(" ", "", word)
  
  #Will now convert the word to a string then to a table for counts
  word = unlist(strsplit(word, ""))
  counts = table(word)
  
  #determine if any letter appears more than once
  if(any(counts > 1)){
    iso = FALSE
  }else{
    iso = TRUE
  }
  
  print(iso)
}

##Tests
is_isogram("") #true
is_isogram("isogram") #true
is_isogram("eleven") #false
is_isogram("subdermatoglyphic") #true
is_isogram("Alphabet") #false
is_isogram("thumbscrew-japingly") #true
is_isogram("Hjelmqvist-Gryb-Zock-Pfund-Wax") #true
is_isogram("Emily Jung Schwartzkopf") #true



