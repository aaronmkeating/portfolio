sum_of_multiples <- function(factors, limit) {
  scores <- c() #new vector to be used to store sequence
  for(i in factors){
    if(i > limit){ #need to ensure that the limit is higher than the factor
      next
    }else{
      scores <- c(scores, seq(i,limit-1,i))
    }
  }
  tally = unique(scores) #tallies the unique values in the vector
  sum(tally)
}




#Tests
sum_of_multiples(c(3, 5), 1) # 0 - notice that limit is lower than both facrots
sum_of_multiples(c(3, 5), 4) #3 - notice limit is lower than factor 2
sum_of_multiples(c(3, 5), 10) #23
sum_of_multiples(c(3, 5), 100) #2318
sum_of_multiples(c(3, 5), 1000) #233168
sum_of_multiples(c(7, 13, 17), 20) #51
sum_of_multiples(c(4, 6), 15) #30
sum_of_multiples(c(5, 6, 8), 150) #4419
sum_of_multiples(c(5, 25), 51) #275
sum_of_multiples(c(43, 47), 10000) #2203160
sum_of_multiples(c(1), 100) #4950
sum_of_multiples(c(), 10000) #0

