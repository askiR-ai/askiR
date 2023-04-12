#' Check Setup
#'
#'@description
#' Determines if the OpenAI API Key has been configured.
#'
#'If you don't already have an API key, you can obtain one by signing up at https://platform.openai.com/signup.
#'@export
#'@import openai
#'@import crayon
#'@examples
#' \dontrun{
#' # Check if the API key is configured
#' check_setup()
#'}#'

check_setup <- function() {
  key <- Sys.getenv("OPENAI_API_KEY")
  if (key=="") {
    message(paste("API key is not configured", key))
    message("Configure your OPENAI_API_KEY using: set_key('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')")
  }else {
  message("API key has been configured. You can begin!")
  }
}




