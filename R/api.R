#' Setup
#' 
#' Setup your session by specifiying your API key to be used in subsequent calls.
#' 
#' @param key Your api key as from \url{https://currentsapi.services}.
#' 
#' @note You can specify \code{CURRENTS_API_KEY} in your \code{.Renviron}.
#' 
#' @import assertthat
#' @export
currents_key <- function(key){
  assert_that(!missing(key), msg = "Missing key")
  Sys.setenv("CURRENTS_API_KEY" = key)
}

#' Latest News
#' 
#' Return latest news.
#' 
#' @export
latest_news <- function(){
  url <- httr::parse_url(BASE_URL)
  url$path <- c(VERSION, "latest-news")
  url <- httr::build_url(url)
  response <- httr::GET(url, httr::add_headers(Authorization = .get_key()))
  content <- httr::content(response)
  purrr::map_df(content[["news"]], tibble::as_tibble)
}