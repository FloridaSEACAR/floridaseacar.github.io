# This file executes the creation of the GitHub Pages HTML page.
# The index.html created by this script is the homepage for floridaseacar.github.io
# navbar.html is called into other IndexTemplates further in the workflow
## Editing navbar.html will update it across all pages
library(rstudioapi)
library(here)

wd <- dirname(getActiveDocumentContext()$path)
setwd(wd)

# Render index.html directory from index.Rhtml to list on GitHub pages (overall HTML page)
knitr::knit("index.Rhtml")
