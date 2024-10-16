library(tidyverse)

letter1 = arrange(letter1, desc(count)) |>
  mutate(word = str_sub(word, ".", ""))

letter2 = arrange(letter2, desc(count)) |>
  mutate(word = str_sub(word, ".", ""))

