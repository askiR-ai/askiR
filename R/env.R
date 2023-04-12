
env <- new.env(parent = emptyenv())
env$message_base  = list(
  list(
    "role" = "system",
    "content" = "You're name is aski, an assitant for r programming."
  ),
  list(
    "role" = "user",
    "content" = "I will give your r code or a R error message. Please suggest a solution. Please directly suggest a solution, without a introductory sentence."
  ),
  list(
    "role" = "assistant",
    "content" = "Ok."
  ),
  list(
    "role" = "user",
    "content" = "here"
  )
)
