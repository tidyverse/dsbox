# Load previous version of dsbox package containing previous version
# of gss data frame. I took the last commit as of 2020/12/4:
# remotes::install_github("https://github.com/rstudio-education/dsbox@6d6e28a1f0d40c120fbe9d7cfceb432e3179b04c", force = TRUE)
library(dsbox)
library(tidyverse)
library(usethis)

# rename data
gss16 <- gss

# Add to package
use_data(gss16)
