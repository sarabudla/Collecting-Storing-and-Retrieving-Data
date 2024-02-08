library ( tidyverse)

stocks <- tibble(
  year   = c(2015, 2015, 2016, 2016),
  half  = c(   1,    2,     1,    2),
  return = c(1.88, 0.59, 0.92, 0.17)
)
stocks %>% 
  pivot_wider(names_from = year, values_from = return) %>% 
  pivot_longer(`2015`:`2016`, names_to = "year", values_to = "return")


# pivot_wider
# pivot_longer 
# left_join 
# pivot_longer(c(`1999`, `2000`), names_to = "year", values_to = "cases")
# pivot_wider(names_from = type, values_from = count)
# seperate()
# separate(rate, into = c("cases", "population"))
# separate(rate, into = c("cases", "population"), sep = "/")
# separate(rate, into = c("cases", "population"), convert = TRUE)
# separate(year, into = c("century", "year"), sep = 2)
# unite(new, century, year, sep = "") variable namr , the variables which we want to unite and sep
# missing values values_drop_na 
# and another way complete() it just keeps the na values in the place where the data are missing 
# fill() 
#treatment <- tribble(
#  ~ person,           ~ treatment, ~response,
#  "Derrick Whitmore", 1,           7,
#  NA,                 2,           10,
 # NA,                 3,           9,
  #"Katherine Burke",  1,           4
#)


# treatment %>% 
#   fill(person)
#> # A tibble: 4 × 3
#>   person           treatment response
#>   <chr>                <dbl>    <dbl>
#> 1 Derrick Whitmore         1        7
#> 2 Derrick Whitmore         2       10
#> 3 Derrick Whitmore         3        9
#> 4 Katherine Burke          1        4
tidyr::who
who %>%
pivot_longer( cols =   new_sp_m014:newrel_f65, names_to = " key ",
              values_to =" cases ", values_drop_na = TRUE) 

library(nycflights13)
airlines
airports
planes
weather
flights

# joining the two tables is by left_join()
# inner join ( matches the key )
# outer join ( left join , right join , full join )
# duplicate key 
# merge()


library('XML')
library("methods")
# xmlparse(file= "   ")
# rootnode = xmlRoot("the file name ")
# rootsize = xmlsize("rootnode ") we will get the size of the rootnode by the rootsize 
# print(rootnode[1]) it gives the name of the rootnode  
# xmldata into dataframe  # xmldataframe = xmlToDataFrame()
# 











