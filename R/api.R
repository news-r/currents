#' Setup
#' 
#' Setup your session by specifiying your API key to be used in subsequent calls.
#' 
#' @param key Your api key as from \url{https://currentsapi.services}.
#' 
#' @note You can specify \code{CURRENTS_API_KEY} in your \code{.Renviron}.
#' 
#' @examples
#' \dontrun{
#' currents_key("xxXXxxXxXxXXXxxXx")
#' }
#' 
#' @return A \link[tibble]{tibble}
#' 
#' @import assertthat
#' @export
currents_key <- function(key){
  assert_that(!missing(key), msg = "Missing key")
  Sys.setenv("CURRENTS_API_KEY" = key)
}

#' News
#' 
#' Return latest news or specific articles.
#' 
#' @param keyword Restict the search to articles that mention a specific keyword.
#' @param country An \code{ISO 2} country code, full list of valid codes is available at \url{https://currentsapi.services/documents}.
#' @param language An \code{ISO 2} language code, full list of valid codes is available at \url{https://currentsapi.services/documents}.
#' @param start_date,end_date Start and end dates, either as \code{Date} or \code{POSIX}.
#' @param type Type of content to return \code{1} for news, \code{2} for article and \code{3} for discussion content. If \code{NULL} all 3 types are choosen.
#' 
#' @examples
#' \dontrun{
#' currents_key("xxXXxxXxXxXXXxxXx")
#' 
#' news <- search_news("Trump")
#' }
#' 
#' @return A \link[tibble]{tibble}
#' 
#' @name news
#' @export
cur_latest <- function(){
  url <- httr::parse_url(BASE_URL)
  url$path <- c(VERSION, "latest-news")
  url <- httr::build_url(url)
  response <- httr::GET(url, httr::add_headers(Authorization = .get_key()))
  content <- httr::content(response)
  purrr::map_df(content[["news"]], tibble::as_tibble)
}

#' @rdname news
#' @export
cur_search <- function(keyword = NULL, country = NULL, language = NULL, start_date = NULL, end_date = NULL, type = NULL){
  url <- httr::parse_url(BASE_URL)
  url$path <- c(VERSION, "search")
  url$query <- list(
    keyword = keyword, 
    country = country, 
    language = language, 
    start_date = .process_posix(start_date), 
    end_date = .process_posix(end_date), 
    type = type
  )
  url <- httr::build_url(url)
  response <- httr::GET(url, httr::add_headers(Authorization = .get_key()))
  content <- httr::content(response)
  purrr::map_df(content[["news"]], tibble::as_tibble)
}
