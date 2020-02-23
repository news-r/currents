#' Available Variables
#' 
#' Fetch abailable variables to use in other calls.
#' 
#' @examples 
#' \dontrun{cur_avail_regions()}
#' 
#' @name available
#' @export
cur_avail_languages <- function(){
  url <- httr::parse_url(BASE_URL)
  url$path <- c(VERSION, "available", "languages")
  url <- httr::build_url(url)
  response <- httr::GET(url, httr::add_headers(Authorization = .get_key()))
  content <- httr::content(response)

  tibble::tibble(
    language = names(content$languages),
    code = unlist(content$languages)
  )
}

#' @rdname available
#' @export
cur_avail_regions <- function(){
  url <- httr::parse_url(BASE_URL)
  url$path <- c(VERSION, "available", "regions")
  url <- httr::build_url(url)
  response <- httr::GET(url, httr::add_headers(Authorization = .get_key()))
  content <- httr::content(response)

  tibble::tibble(
    region = names(content$regions),
    code = unlist(content$regions)
  )
}

#' @rdname available
#' @export
cur_avail_categories <- function(){
  url <- httr::parse_url(BASE_URL)
  url$path <- c(VERSION, "available", "categories")
  url <- httr::build_url(url)
  response <- httr::GET(url, httr::add_headers(Authorization = .get_key()))
  content <- httr::content(response)

  tibble::tibble(
    categories = unlist(content$categories)
  )
}