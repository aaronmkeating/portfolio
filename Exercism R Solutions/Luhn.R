# Determine whether the number is valid.
is_valid <- function(input) {
  
  #First step is to remove the spaces and prepare input for processing
  num <- gsub(" ", "", input)
  num <- unlist(strsplit(num, "")) #seps the numbers
  num <- gsub("[^0-9.]", "", num)
  num <- as.numeric(num) #converts string to numbers
  num_count <- num
  
  if (length(num) %% 2 == 1) { 
    num_count <- c(0, num)
  }
  
  #adding the input to a matrix to split every other number
  num_mat <- matrix(data = num_count, ncol = 2, byrow = TRUE)
  num_mat[is.na(num_mat)] <- 0
  num1 <- sum(num_mat[,2])
  num2 <- 0
  
  #Next, every other number needs to be doubled
  for (i in num_mat[,1]){
    test = i*2
    if(test > 9){
      num2 = num2 + ((i*2) - 9) 
    }else{
      num2 = num2 + (i*2)
    }
  
  #Now the number needs to be summed
  final_num <- sum(num1, num2)
  
  #Finally, determine if the sum of the number is evenly divisible by 10
  if(length(num) <= 1){ 
    luhn = FALSE
  }else if(final_num %% 10 == 0){
    luhn = TRUE
  }else{
    luhn = FALSE
  }
  }
  
  #this will invalidate inputs that do not contain numbers
  inspect <- gsub(" ", "", input)
  inspect <- unlist(strsplit(inspect, ""))
  valid <- c("1", "2", "3", "4", "5", "6", "7", "8", "9", "0")
  for(i in inspect){
    if(!(i %in% valid)){
      luhn = FALSE
    }
  }

  print(luhn)
}
  

library(testthat)
test_that("single digit strings can not be valid", {
  input <- "1"
  expect_equal(is_valid(input), FALSE)
})
test_that("A single zero is invalid", {
  input <- "0"
  expect_equal(is_valid(input), FALSE)
})
test_that("a simple valid SIN that remains valid if reversed", {
  input <- "059"
  expect_equal(is_valid(input), TRUE)
})
test_that("a simple valid SIN that becomes invalid if reversed", {
  input <- "59"
  expect_equal(is_valid(input), TRUE)
})
test_that("valid Canadian SIN", {
  input <- "046 454 286"
  expect_equal(is_valid(input), TRUE)
})
test_that("invalid Canadian SIN", {
  input <- "046 454 287"
  expect_equal(is_valid(input), FALSE)
})
test_that("invalid credit card", {
  input <- "8273 1232 7352 0569"
  expect_equal(is_valid(input), FALSE)
})
test_that("valid strings with a non-digit added become invalid", { #failed
  input <- "055a 444 285"
  expect_equal(is_valid(input), FALSE)
})
test_that("punctuation is not allowed", { 
  input <- "055-444-285"
  expect_equal(is_valid(input), FALSE)
})
test_that("symbols are not allowed", { 
  input <- "055£ 444$ 285"
  expect_equal(is_valid(input), FALSE)
})
test_that("single zero with space is invalid", {
  input <- " 0"
  expect_equal(is_valid(input), FALSE)
})
test_that("more than a single zero is valid", {
  input <- "0000 0"
  expect_equal(is_valid(input), TRUE)
})
test_that("another valid sin", {
  input <- "055 444 285"
  expect_equal(is_valid(input), TRUE)
})
test_that("nine doubled is nine", {
  input <- "091"
  expect_equal(is_valid(input), TRUE)
})


