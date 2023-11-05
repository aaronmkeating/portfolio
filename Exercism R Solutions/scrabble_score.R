scrabble_score <- function(input){
  
  #empty vector to keep score
  score = 0
  
  #convert the word to a list of upeer case letters
  word <- unlist(strsplit(input, ""))
  word <- toupper(word)
  
  #iterate through the input letters to determine score
  for(i in word){
    if(i %in% c("A", "E", "I", "O", "U", "L", "N", "R", "S", "T")){
      score = score + 1
    }else if (i %in% c("D", "G")){
      score = score + 2
    }else if (i %in% c("B", "C", "M", "P")){
      score = score + 3
    }else if(i %in% c("F", "H", "V", "W", "Y")){
      score = score + 4
    }else if (i == "K"){
      score = score + 5
    }else if (i %in% c("J", "X")){
      score = score + 8
    }else if (i %in% c("Q", "Z")){
      score = score + 10
    }else if (i == ""){
      score = score
    }
  }
  print(score)

  
}


#Letter                           Value
#A, E, I, O, U, L, N, R, S, T       1
#D, G                               2
#B, C, M, P                         3
#F, H, V, W, Y                      4
#K                                  5
#J, X                               8
#Q, Z                               10

#TESTING
library(testthat)
test_that("lowercase letter", {
  input <- "a"
  expect_equal(scrabble_score(input), 1)
})
test_that("uppercase letter", {
  input <- "A"
  expect_equal(scrabble_score(input), 1)
})
test_that("valuable letter", {
  input <- "f"
  expect_equal(scrabble_score(input), 4)
})
test_that("short word", {
  input <- "at"
  expect_equal(scrabble_score(input), 2)
})
test_that("short, valuable word", {
  input <- "zoo"
  expect_equal(scrabble_score(input), 12)
})
test_that("medium word", {
  input <- "street"
  expect_equal(scrabble_score(input), 6)
})
test_that("medium, valuable word", {
  input <- "quirky"
  expect_equal(scrabble_score(input), 22)
})
test_that("long, mixed-case word", {
  input <- "OxyphenButazone"
  expect_equal(scrabble_score(input), 41)
})
test_that("english-like word", {
  input <- "pinata"
  expect_equal(scrabble_score(input), 8)
})
test_that("empty input", {
  input <- ""
  expect_equal(scrabble_score(input), 0)
})
test_that("entire alphabet available", {
  input <- "abcdefghijklmnopqrstuvwxyz"
  expect_equal(scrabble_score(input), 87)
})

