library(tidyverse)
library(duckdb)

db <- dbConnect(duckdb::duckdb(), dbdir = "rotten_tomatoes.duckdb")
movies <- 
  tbl(db, "read_csv_auto('archive/rotten_tomatoes_movies.csv')") |>
  compute(name = "movies", temporary = FALSE)
reviews <- tbl(db, "read_csv_auto('archive/rotten_tomatoes_movie_reviews.csv')") |>
  compute(name = "reviews", temporary = FALSE)
dbDisconnect(db, shutdown = TRUE)