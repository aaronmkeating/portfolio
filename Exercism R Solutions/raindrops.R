raindrops <- function(number) {
  if(number %% 3 == 0 && number %% 5 == 0 && number %% 7 == 0){
    print('PlingPlangPlong')
  }else if (number %% 3 == 0 && number %% 5 == 0){
    print('PlingPlang')
  }else if (number %% 3 == 0 && number %% 7 == 0){
    print('PlingPlong')
  }else if (number %% 5 == 0 && number %% 7 == 0){
    print('PlangPlong')
  }else if(number %% 3. == 0){
    print('Pling')
  }else if (number %% 5 == 0){
    print('Plang')
  }else if(number %% 7 == 0){
    print('Plong')
  }else{
    print(as.character(number))
  }
  
}


#tests
raindrops(1)
raindrops(5)
raindrops(7)
raindrops(6)
raindrops(10)
raindrops(14)
raindrops(34)
