#' Correlogram Function
#'
#' This function allows you to produce the correlogram for a certain NBA year.
#' @param year What year?
#' @keywords from 1950 to 2013
#' @export
#' @examples
#' corr_year(1996)
corr_year <- function(year){
  dat <- nba.dat %>%
    filter(Year == year) %>%
    keep(~all(sapply(., is.numeric)))
  corr_mat <- cor(dat)
  corrplot::corrplot(corr_mat, type = "upper", 
                     method = "square", na.label.col = "white")
}