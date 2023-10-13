space_age <- function(seconds, planet) {
  mercury <- 0.2408467
  venus <- 0.61519726
  earth <- 1.0 
  mars <- 1.8808158
  jupiter <- 11.862615
  saturn <- 29.447498
  uranus <- 84.016846
  neptune <- 164.79132
  
  planet_lower <- tolower(planet)
  
  if (planet_lower %in% c("mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune")) {
    planet_years <- (365.25 * get(planet_lower)) * 24 * 60 * 60
    earth_age <- seconds / planet_years
    return(round(earth_age,2))
  }
}

#tests
space_age(1000000000, "earth")
space_age(2134835688, "mercury")

