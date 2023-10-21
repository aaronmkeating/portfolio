is_armstrong_number <- function(n) {
  number = as.character(n)
  num_length <- nchar(number)
  numbers <- unlist(strsplit(number, ""))
  if (num_length == 1){
    result = n
  }else if (num_length == 2){
    result = as.numeric(numbers[1])^num_length + as.numeric(numbers[2])^num_length
  }else if (num_length == 3){
    result = as.numeric(numbers[1])^num_length + as.numeric(numbers[2])^num_length + as.numeric(numbers[3])^num_length
  }else if (num_length == 4){
    result = as.numeric(numbers[1])^num_length + as.numeric(numbers[2])^num_length + as.numeric(numbers[3])^num_length + as.numeric(numbers[4])^num_length
  }else if (num_length == 5){
    result = as.numeric(numbers[1])^num_length + as.numeric(numbers[2])^num_length + as.numeric(numbers[3])^num_length + as.numeric(numbers[4])^num_length + as.numeric(numbers[5])^num_length
  }else if (num_length == 6){
    result = as.numeric(numbers[1])^num_length + as.numeric(numbers[2])^num_length + as.numeric(numbers[3])^num_length + as.numeric(numbers[4])^num_length + as.numeric(numbers[5])^num_length + as.numeric(numbers[6])^num_length
  }else if (num_length == 7){
    result = as.numeric(numbers[1])^num_length + as.numeric(numbers[2])^num_length + as.numeric(numbers[3])^num_length + as.numeric(numbers[4])^num_length + as.numeric(numbers[5])^num_length + as.numeric(numbers[6])^num_length + as.numeric(numbers[7])^num_length
  }
  if(result == n){
    print(TRUE)
  }else{
    print(FALSE)
  }
  
}

is_armstrong_number(0) #TRUE
is_armstrong_number(5) #TRUE
is_armstrong_number(10) #FALSE
is_armstrong_number(153) #TRUE
is_armstrong_number(100) #FALSE
is_armstrong_number(9474) #TRUE
is_armstrong_number(9475) #FALSE
is_armstrong_number(9926315) #TRUE
is_armstrong_number(9926314) #FALSE


