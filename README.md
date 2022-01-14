The purpose of this project is to practice data mining and statistical learning using the public wine dataset. More 
specifically, in this project, I create a predictive model on the quality of red wine based on chemical properties of 
wine.

The following analytical approaches are taken:

* Multiple regression: the *Quality* response is assumed to be a continuous variable and is predicted by the independent 
predictors, all of which are continuous.
* Regression Tree
* Classification of wines based on the chemical properties: Unsupervised analysis
* Classification of wines based on the chemical properties: K-nearest neighbors classification

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
