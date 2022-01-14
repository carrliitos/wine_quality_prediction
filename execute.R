rmarkdown::render(
  "notebooks/main.Rmd",
  params = list(start_date = "2019-11-01",
                end_date = "2021-11-01"),
  output_format = "html_document",
  output_file = here::here("output", paste0(basename(getwd()), ".html")),
  envir = new.env()
)