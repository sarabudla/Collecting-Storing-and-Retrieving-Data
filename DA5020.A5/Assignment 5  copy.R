# Question 1 

library(xml2)
library(XML)
library(RCurl)
library(dplyr)
url <- "http://www.senate.gov/general/contact_information/senators_cfm.xml"
xml_content <- getURL(url, followlocation = TRUE)
xml_data <- read_xml(xml_content)

# Question 4 
# loading the csv file 
load_data <- read.csv("Ratio Of Female To Male Youth Unemployment Rate .csv", header = FALSE)
load_data1 <- load_data[-c(5:35)]

# Question 5 
# Select five countries from each of the following continents: North America, Asia and Middle East.
# Visualize their respective data from the last 20 years using a line chart; use facet_wrap to display the data
# for each continent in its own chart. Explain your observations about the ratio of female to male youth
# unemployment rate in the selected regions.

data <- read.csv("Country Meta-Data.csv")
select_countries <- select(data,region)
