library("tidyverse")
library("gapminder")
gapminder 
write_csv(gapminder,'./gapminder.csv')
View(gapminder)

gapminder_sum <- gapminder %>% 
  group_by(continent) %>% 
  summarize(ave_life = mean(lifeExp))

View(gapminder_sum)
