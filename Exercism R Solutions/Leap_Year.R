leap <- function(year) {
  if(year %% 4 == 0 && year %% 100 == 0){
    if(year %% 400 == 0){
      leap = TRUE
    }else if (year %% 4 && year %% 100 == 0) {
      leap = FALSE
    }else if (year %% 100 == 0 && year %% 400 != 0){
      leap = FALSE
    }
  }else if (year %% 4 ==0 && year %% 100 != 0){
    leap = TRUE
  }else{
    leap = FALSE
  }
}