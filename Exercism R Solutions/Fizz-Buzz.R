fizz_buzz <- function(n) {
  results <- character(n)
  for(i in 1:n){
    if (i %% 3 == 0 && i %% 5 == 0){
      results[i] <- ('Fizz Buzz')
    } else if (i %% 3 == 0){
      results[i] <- ('Fizz')
    } else if (i %% 5 == 0){
      results[i] <- ('Buzz')
    } else {
      results[i] <- as.character(i)
    }
  }
  return(results)
}
 #tests
fizz_buzz(10)
