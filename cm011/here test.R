library("tidyverse")
gapminder_csv <- read_csv('./gapminder_sum.csv')

ls()
list = ls()
remove(list = ls())
ls()

library("tidyverse")
library("here")
ls()

read_csv('./test/tes/te/t/gapminder_sum.csv')

#another way using here
#platform agnostic, dir-structure agnostic
write_csv(here::here("test","tes","te","t","gapminder_sum.csv"))
####

#couple more things about there
set_here()