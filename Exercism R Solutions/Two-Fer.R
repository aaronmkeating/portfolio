two_fer <- function(input = NULL) {
  if (length(input) == 0) {
    var = ('One for you, one for me.')
  } else {
    var = (paste0('One for ', input, ', one for me.'))
  }
  print(var)
}

#tests
two_fer()

two_fer("Alice")
