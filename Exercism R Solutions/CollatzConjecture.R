collatz_step_counter <- function(num) {
  #need to ensure that numbers are >0
  if(any(num <1)){
    stop("Input must be a possitive number above 0")
  }
  
  #need to count iterations for the output
  iters <- rep(0, length(num))  # Initialize iters with zeros
  
  #will iterate through each number provided
  for (i in 1:length(num)) {
    
    #now need a while loop to determine if even
    #if even: divide by 2
    #if odd: (3 * number) + 1
    while (num[i] > 1) {
      iters[i] <- iters[i] + 1
      if (num[i] %% 2 == 0) {
        num[i] <- num[i] / 2
      } else {
        num[i] <- 3 * num[i] + 1
      }
    }
  }
  
  print(iters)
  
}

collatz_step_counter(1) #0
collatz_step_counter(16) #4
collatz_step_counter(12) #9
collatz_step_counter(1000000) #152
collatz_step_counter(0) #error
collatz_step_counter(-15) #error
collatz_step_counter(c(1, 16, 12, 1000000)) #(0, 4, 9, 152)

