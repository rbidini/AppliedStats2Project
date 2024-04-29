library(readr)
library(dplyr)
library(forcats)
cars_data <- read.csv("vehicles.csv")


clean_cars <- cars_data %>% subset(select = -c(id,url,region_url,VIN,image_url,description,county,lat,long,posting_date))


write.csv(clean_cars,"cleaned_cars.csv")




cleaner_cars<- read.csv("cleaned_cars.csv")

cleaner_cars2 <- cleaner_cars %>% subset(select = -c(X)) %>% filter(!is.na(odometer)|!is.na(year))
