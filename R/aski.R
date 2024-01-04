#' Aski
#'
#' Obtain AI assistance for resolving error messages.
#' Simply copy your error, execute aski(), and watch your error get resolved in no time!
#'@usage aski()
#'@details
#'By default, aski accesses your clipboard - No input needed.
#'Alternatively, you can enter string containing the error or question.
#' @return A recommendation for addressing the error.
#' @param input Optional: A string containing the error or question. If not provided, the clipboard content is used.

#' @export
#'@import crayon
#'@import openai
#'
#'

aski <- function(input = NULL) {
  if (is.null(input)) {
    # use clipboard
    if (.Platform$OS.type == "windows") {
      input <- readClipboard()
    }else {

    readClipboardUnix <- function() {
      x <- pipe("pbpaste")
      out <- paste(scan(x, what = "character", quiet=T), collapse = " ")
      close(x)
      return(out)
    }
    input <- readClipboardUnix()
    }
  }else {
    input <- input
  }

    messages <- env$message_base
    collapsed <-  paste(input, collapse = "\n")
    messages[[4]]$content <- collapsed
    cat(crayon::red(input))

    output <- openai::create_chat_completion(model = "gpt-3.5-turbo",
                                     messages = messages
    )
    message("\n")
    cat(crayon::green((output$choices$message.content)))

}


#'@export
askflex <- function(input = NULL, beforehand = "") {
  beforehand <- paste(beforehand, "\n")
  if (is.null(input)) {
    # use clipboard
    if (.Platform$OS.type == "windows") {
      #print("windows")
      input <- readClipboard()
      input <- paste(input, collapse = " ")
      input <- paste(beforehand, input, collapse = " ")
    }else {

      readClipboardUnix <- function() {
        x <- pipe("pbpaste")
        out <- paste(scan(x, what = "character", quiet=T), collapse = " ")
        close(x)
        out <- paste(beforehand, out, collapse = " ")
        return(out)
      }

      input <- readClipboardUnix()

    }
  }else {
    input <- paste(input, collapse = " ")
    input <- paste(beforehand, input, collapse = " ")
  }

  messages <- env$message_short
  collapsed <-  paste(input, collapse = "\n")
  messages[[3]]$content <- collapsed
  cat(crayon::red(collapsed))

  output <- openai::create_chat_completion(model = "gpt-3.5-turbo",
                                           messages = messages
  )
  message("\n")
  cat(crayon::green((output$choices$message.content)))

}




