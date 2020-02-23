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
#' @param country An \code{ISO 2} country code, see \code{\link{cur_avail_regions}} for a full list.
#' @param language An \code{ISO 2} language code, see \code{\link{cur_avail_languages}} for a full lis.
#' @param start_date,end_date Start and end dates, either as \code{Date} or \code{POSIX}.
#' @param category Valid category, see \code{\link{cur_avail_categories}} for a full list.
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
cur_search <- function(keyword = NULL, country = NULL, language = NULL, start_date = NULL, end_date = NULL, category = NULL){
  url <- httr::parse_url(BASE_URL)
  url$path <- c(VERSION, "search")
  url$query <- list(
    keyword = keyword, 
    country = country, 
    language = language, 
    start_date = .process_posix(start_date), 
    end_date = .process_posix(end_date), 
    category = category
  )
  url <- httr::build_url(url)
  response <- httr::GET(url, httr::add_headers(Authorization = .get_key()))
  content <- httr::content(response)
  purrr::map_df(content[["news"]], tibble::as_tibble)
}
