#' Set key
#'
#' This function sets the OpenAI API key and stores it for later use. It also sets the key as an environment variable for the current R session.
#'
#' @param key Character string containing the OpenAI API key.
#'
#' @export
#'
#' @examples
#' set_key("abc123def456")
#'
#'
#'
#' @return NULL
set_key <- function(key) {
  path <- system.file("data/key.txt", package = "askiR", mustWork = T)
  cur <- readLines(path)
  writeLines(key, path)
  Sys.setenv(OPENAI_API_KEY=key)
  message("Key is set.")
}

