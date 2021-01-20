library(ggplot2)
library(readr)
library(showtext)
showtext_auto()
font_add_google("Lato")
font_add_google("Noto Sans")
font_add_google("Roboto Condensed")

rest = read.csv("~/Documents/GIS/js/restaurants_data/rest_new18-20_unique.csv")
theme_set(theme_minimal(base_size = 10, base_family = "Noto Sans"))

ggplot() + geom_histogram(data = rest, aes(score), fill="#a3aa3a", color='#6e7328') + 
  labs(x = "Mean Score from Health Inspections 2018 - Sept 2020", y="Count", title = "Distribution of Mean Scores") +
  theme(plot.title = element_text(hjust = 0.5, size = 12), panel.grid.minor = element_blank()) +
  geom_vline(xintercept =mean(rest$score), color="#a34019") +
  geom_text(aes(x=mean(rest$score), label=paste0("Mean 94"), y=450), angle=90, vjust=1.1, color="black", size = 2, family = "Noto Sans")



