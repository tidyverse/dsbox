# load packages ----------------------------------------------------------------

library(fs)
library(rsconnect)
library(tidyverse)
library(here)

# get a list of directories ----------------------------------------------------

tutorial_dirs <- dir_info(path = here::here("inst/tutorials/"), recurse = 0) %>%
  filter(
    type == "directory",
    str_detect(path, "/")
  ) %>%
  pull(path)

# tutorials --------------------------------------------------------------------

tutorials <- tibble(dir_to_deploy = tutorial_dirs) %>%
  mutate(
    title = str_remove(tutorial_dirs, "^.*tutorials/"),
    title = paste0("dsbox-", title),
  )

# deploy all -------------------------------------------------------------------

for(i in 1:nrow(tutorials)){
  deployApp(
    appDir = tutorials$dir_to_deploy[i],
    appTitle = tutorials$title[i],
    account = "minecr",
    forceUpdate = TRUE,
    launch.browser = TRUE
  )
}
