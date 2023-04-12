.onLoad <- function(libname, pkgname) {
  # check for keyfile
  path <- system.file("data/key.txt", package = "askiR", mustWork = T)
  key <- readLines(path)
  if (key == "nokey") {
    packageStartupMessage("Configure your OPENAI_API_KEY using: set_key('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')")
  } else{
    Sys.setenv(OPENAI_API_KEY=key)
    packageStartupMessage("Let's start!")
  }

}

