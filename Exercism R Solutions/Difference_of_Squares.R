difference_of_squares <- function(natural_number) {
  
  #first, convert the num to a vector for natural nums up to the provided num
  nums <- (1:natural_number)
  nums2 <- (1:natural_number)
  
  #square of sum
  sq_sum = sum(nums)^2
  
  #iterate to find square of each natural number
  for (i in nums2){
    nums2[i] = nums2[i]^2
  }
  
  #sum of squares:
  sum_sq = sum(nums2)
  
  #output
  print(sq_sum - sum_sq)
}


#test cases
difference_of_squares(0) #0
difference_of_squares(5) #170
difference_of_squares(10) #2640
difference_of_squares(100) #25164150

