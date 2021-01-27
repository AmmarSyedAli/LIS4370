# Module 3 Assignment
Name <- c('Jeb', 'Donald', 'Ted', 'Marco', 'Carly', 'Hillary', 'Bernie')
ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_political_poll_results <- c(12, 75, 43, 19, 1, 21, 19)

poll_df <- data.frame(
  'Name' = Name,
  'ABC' = ABC_political_poll_results,
  'CBS' = CBS_political_poll_results
)


# From this polling data, its clear that Donald Trump was the most popular 
# candidate by far, with Ted Cruz being a little further behind. The rest of 
# the candidates polled very poorly.