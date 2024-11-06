library(tidyverse)
library(stopwords)

letter1 = read_csv("letter1.csv")
letter2 = read_csv("letter2.csv")
wordsOfInterest = c("shall", "god", "pure", "flood", "missouri", "exterminating", "priesthood", "spirit", "mob")

'%!in%' <- function(x,y)!('%in%'(x,y))
wordsToRemove = stopwords(language="en", source="nltk")

letter1Data = arrange(letter1, desc(count)) |>
  filter(word %!in% wordsToRemove) 
  

letter2Data = arrange(letter2, desc(count)) |>
  filter(word %!in% wordsToRemove)

combined = left_join(letter1Data, letter2Data, by="word") |>
  rename("letter1" = count.x) |>
  rename("letter2" = count.y) |>
  filter(word %in% wordsOfInterest) |>
  pivot_longer(cols=c(letter1, letter2), names_to ="letter")

compared = anti_join(letter1Data, letter2Data, by="word")

ggplot(data = combined, aes(x=word, y=value, fill=letter)) +
  geom_col(position="dodge") +
  theme_bw()