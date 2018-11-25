mn <-c(place='A',adjective='B',noun='C')
mad_libs <- function(...) {
  argxs <- list(...)
  place <- argxs[["place"]]
  adjective <- argxs[["adjective"]]
  noun <- argxs[["noun"]]
  paste(
    "News from",
    place,
    "today where",
    adjective,
    "students took to the streets in protest of the new",
    noun,
    "being installed on campus."
  )
}

mad_libs <- function(...) {
  argxs <- list(...)
  #isTRUE(argxs==mn)
  #length(argxs)
 # argxs
  argxs[["place"]]
  #placex <- argxs["place"]
  #placex
}