is_pangram <- function(input) {
  
  #need a vector of letters for comparison 
  letters <- tolower(LETTERS[1:26])
  
  #will convert the input to lower case and remove spaces and dashes
  pangram = gsub(" ", "", input)
  pangram = gsub("-", "", pangram)
  pangram = gsub("_", "", pangram)
  pangram = gsub("[0-9'\"\\\\.]", "", pangram, perl = TRUE)
  
  #convert the string to a vector of letters and sort, removing duplicates
  pangram_lets = unlist(strsplit(pangram, ""))
  pangram_lets = tolower(pangram_lets)
  unique_lets <- sort(unique(pangram_lets))
  
  #testing if they are equal
  if(length(letters) != length(unique_lets)){
    print(FALSE)
  }else{
    print(TRUE)
  }

  
}


is_pangram("") #false
is_pangram("abcdefghijklmnopqrstuvwxyz") #true
is_pangram("the quick brown fox jumps over the lazy dog") #true
is_pangram("a quick movement of the enemy will jeopardize five gunboats") #false - Missing X
is_pangram("five boxing wizards jump quickly at it") #false
is_pangram("the_quick_brown_fox_jumps_over_the_lazy_dog") #true
is_pangram("the 1 quick brown fox jumps over the 2 lazy dogs") #true
is_pangram("7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog") #false
is_pangram("\"Five quacking Zephyrs jolt my wax bed.\"") #true
is_pangram("abcdefghijklm ABCDEFGHIJKLM") #false

