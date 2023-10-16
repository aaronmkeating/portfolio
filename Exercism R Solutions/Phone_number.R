parse_phone_number <- function(number_string) {
  # First, clean the string to remove "+()-_. and spaces
  cleaned <- gsub("[()+_[:space:]]|-", "", number_string)
  
  # Remove periods ('.')
  cleaned <- gsub("\\.", "", cleaned)
  
  # Check if the first character is '1' and remove it if it is
  if (substr(cleaned, 1, 1) == '1') {
    result <- sub('1', '', cleaned)
  } else {
    result <- cleaned
  }
  
  #Exchange numbers must start with 2-9 or they are invalid
  valid_exch <- c("2", "3", "4", "5", "6", "7", "8", "9")
  
  # Check if the fourth character is in the valid exchange values
  if (substr(cleaned, 4, 4) %in% valid_exch) {
    # Check if the result is exactly 10 characters
    if (nchar(result) != 10) {
      result <- NULL
    }
  } else {
    result <- NULL
  }
  
  print(result)
}

#some tests:
parse_phone_number("12234567890")
parse_phone_number("(223) 456-7890")
parse_phone_number("123456789")
parse_phone_number("223.456.7890")
parse_phone_number("12234567890")
parse_phone_number("(223) 056-7890")



