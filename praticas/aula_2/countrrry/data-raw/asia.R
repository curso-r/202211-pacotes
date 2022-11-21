## code to prepare `asia` dataset goes here

asia <- sql::sql |>
  mutate() |>
  filter() |>
  ...

usethis::use_data(asia, overwrite = TRUE)
