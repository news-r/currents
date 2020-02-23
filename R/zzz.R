.onAttach <- function(libname, pkgname) {

  key <- Sys.getenv("CURRENTS_API_KEY")

  msg <- "No API key found, see `currents_key`"
  if(nchar(key) > 1) msg <- "API key loaded!"

  packageStartupMessage(msg)

}