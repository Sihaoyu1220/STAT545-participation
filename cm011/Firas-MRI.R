library("tidyverse")
library("here")
library(readxl)
mri_file = here("Desktop","Firas-MRI.xlsx")
mri <- read_excel(mri_file,range="A1:L12")
mri<-mri[,-10]
mri <- mri %>% 
  pivot_longer(cols = `Slice 1` : `Slice 8`,
               names_to = 'slice_no',
               values_to = 'value')
