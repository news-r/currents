BASE_URL <- "https://api.currentsapi.services/"
VERSION <- "v1"

# get key
.get_key <- function(){
  key <- Sys.getenv("CURRENTS_API_KEY")
  assert_that(nchar(key) > 1, msg = "Missing key")
  return(key)
}

# process posix to RFC 3339
.process_posix <- function(x = NULL){
  if(!is.null(x))
    x <- format(x, "%Y-%m-%dT%H:%M:%S%z")
  return(x)
}