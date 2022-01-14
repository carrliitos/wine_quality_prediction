In the opening paragraph, introduce the purpose of this project code.

Each project should have a README file that orients anyone else to the project. Minimally, each project should have a 
section titled "Execution" that describes how to execute the entire project including any dependency as well as section 
titled "Structure" that describes where work can be found and should be peristed. Additionally, each data project in R 
should be committed to a git repository.

We should prefer to do most of our work in [notebooks](https://bookdown.org/yihui/rmarkdown/notebook.html) which can 
produce a human-readable (read as not overly technical) document for other members of a study or project team. Notebooks 
contain code chunks which are executable and render datasets or other outputs immediately below. A narrative describing 
the work being done as well as the reason for the work can logically accompany the code chunks. Significant or overly 
complex R code should be placed in the `R` folder. That code can be called in a notebook by first specifying 
`source("name of the file.R")` and then calling relevant functions. Code contained in the `R` folders should, if 
reasonable, include automated test cases.

## Execution
To execute, run the below commands:

```{r}
rmarkdown::render(
  "notebooks/execute.Rmd",
  output_format = "html_document",
  output_file = here::here("output", paste0(basename(getwd()), ".html")),
  envir = new.env()
)
```

## Structure
The project contains the following general structure:

* R: Complex or significant amounts of R code that is not appropriate for notebooks
* data-raw: Incoming datasets that should be considered readonly
* data: Datasets produced for cleaning, analysis, or distribution after execution of scripts; consider this directory 
volatile; create subdirectories if needed;
* notebooks: Notebooks that support the manipulation and analysis of the datasets; number workbooks in order of 
execution required and divide into subdirectories if needed
* output: Any documents or datasets intended for distribution from this project
* renv: R packages needed to execute the project
* reports: RMarkdown documents that support the manipulation and analysis of the datasets; number workbooks in order of 
execution required and divide into subdirectories if needed
* sql: SQL scripts to extract datasets
