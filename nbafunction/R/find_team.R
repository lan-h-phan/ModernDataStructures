#' Find Team Function
#'
#' This function allows you to find the team NBA members were part of for a specific year
#' @param year What year do you want to look at?
#' @keywords from 1950 to 2013
#' @export
#' @examples
#' find_team(1995)

find_team <- function(year){
  nba.dat %>%
    filter(Year == year) %>%
    transmute(Player = Player,
              Team = Tm)}