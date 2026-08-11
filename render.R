#!/usr/bin/env Rscript

# Render every local R Markdown source from any working directory.
file_arg <- grep("^--file=", commandArgs(trailingOnly = FALSE), value = TRUE)
project_dir <- if (length(file_arg)) {
  dirname(normalizePath(sub("^--file=", "", file_arg[[1]])))
} else {
  getwd()
}

setwd(project_dir)

if (!requireNamespace("rmarkdown", quietly = TRUE) ||
    !requireNamespace("knitr", quietly = TRUE) ||
    !requireNamespace("ggplot2", quietly = TRUE)) {
  stop(
    "Missing rmarkdown, knitr, or ggplot2. Install them first; see README.md.",
    call. = FALSE
  )
}

pandoc_candidates <- c(
  Sys.getenv("RSTUDIO_PANDOC"),
  "/Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/aarch64",
  "/Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools"
)
pandoc_candidates <- pandoc_candidates[nzchar(pandoc_candidates)]
available_pandoc <- pandoc_candidates[file.exists(file.path(pandoc_candidates, "pandoc"))]

if (length(available_pandoc)) {
  Sys.setenv(RSTUDIO_PANDOC = available_pandoc[[1]])
}

render_inputs <- sort(list.files(
  path = project_dir,
  pattern = "[.][Rr][Mm][Dd]$",
  full.names = FALSE
))

if (!length(render_inputs)) {
  stop("No local R Markdown files found.", call. = FALSE)
}

for (input in render_inputs) {
  output <- sub("[.][Rr][Mm][Dd]$", ".html", input)
  message("Rendering ", input, " -> ", output)
  rmarkdown::render(
    input = input,
    output_file = output,
    envir = new.env(parent = globalenv()),
    encoding = "UTF-8",
    clean = TRUE,
    quiet = FALSE
  )
}
