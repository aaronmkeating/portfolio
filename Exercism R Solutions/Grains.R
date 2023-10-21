square <- function(n) {
  if (is.numeric(n) && n > 0) { #need to add function to not allow <1
  } else {
    stop("Input must be a positive number.")
  }
  if (is.numeric(n) && n < 65) { #need to add function to not allow >64
  } else {
    stop("Input must be a positive number.")
  }
  grains <- (1)
  if (n==1){
    grains = 1
  }else{
    for(i in 2:n){
    grains <- (grains * 2)
    }
  }
  print(grains)
}

total <- function() {
  grains = 1
  square = 1
  for(i in 2:64){
    grains <- (grains * 2) + (square * 2)/2
  }
  print(grains)
}


#Some tests
total() #should be: 18446744073709551615 or 1.844674e+19
square(2)
square(4)
square(6)
square(1)
square(32)
square(65)
square(64)





