library(tidyverse)

letter1 = arrange(letter1, desc(count)) |>
  filter(word != c("and", "the", "of", "to", "that", "we", "a", "be", "in", "our"))

ggplot(data=letter1) +
  geom_boxplot

