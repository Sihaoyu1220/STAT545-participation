data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
library(here)
#read_csv can diectly import URLS but read_excel requires you to first download it.
#This is the old way
download.file(url = data_ul,
              destfile = paste('./datasets/', file_name))

#Task: change above to use the "here::here" package
download.file(url = data_url,
              destfile = here::here("Desktop","STAT 545A","STAT545-participation","cm011","GreatestGivers.xls"))
# Recommendation: Use "basename"
file_name <- basename(data_url)

download.file(url = data_url,
              destfile = here::here("test",basename(data_url)))

library(readxl) #this will let you load in excel files
#assign the imported data to a tibble
philanthropists <- read_excel(here::here("Desktop","STAT 545A","STAT545-participation","cm011",file_name),trim_ws = TRUE)
View(philanthropists)
head(philanthropists)

# TODO: find a way to remove leading white-space from Column 4

