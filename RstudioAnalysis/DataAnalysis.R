library(tidyverse)
library(stopwords)

'%!in%' <- function(x,y)!('%in%'(x,y))
wordsToRemove = stopwords(language="en", source="nltk")

letter1 = arrange(letter1, desc(count)) |>
  filter(word %!in% wordsToRemove)

letter2 = arrange(letter2, desc(count)) |>
  filter(word %!in% wordsToRemove)

