source("env/activate.R")

message("Hello, Carlitos!")

.First <- function() {
  if(interactive()) {
  	library(utils)
  	timestamp(, prefix = paste("##----- [", getwd(), "] ", sep = ""))
  }
}

.Last <- function() {
  if(interactive()) {
  	hist_file <- Sys.getenv("R_HISTFILE")
  	if(hist_file == "") {
  	  hist_file <- "~/.Rhistory"
  	}
  	savehistory(hist_file)
  }
}

prompt::set_prompt(function(...){
  paste0(
  	prompt::memory_usage(),
  	"[", 
  	prompt::git_branch(), 
  	prompt::git_dirty(), 
  	prompt::git_arrows(), 
  	"] > "
  )
})

message("*** Successfully loaded .Rprofile ***")

