#' Find Oldest Player Function
#'
#' This function allows you to find the oldest NBA player of that year
#' @param year What year?
#' @keywords from 1950 to 2013
#' @export
#' @examples
#' oldest_player(1996)
oldest_player <- function(year){
  nba.dat %>%
    filter(Year == year) %>%
    arrange(desc(Age), Player) %>%
    head(1) #only print the first player
}