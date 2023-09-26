library(tidyverse)
library(duckdb)

db <- dbConnect(duckdb::duckdb())
movies <- tbl(db, "read_csv_auto('archive/rotten_tomatoes_movies.csv')")
reviews <- tbl(db, "read_csv_auto('archive/rotten_tomatoes_movie_reviews.csv')")
movies |> compute(name = "movies")
dbExecute(db, "COPY movies TO 'archive/movies.parquet' (FORMAT PARQUET)")
reviews |> compute(name = "reviews")
dbExecute(db, "COPY reviews TO 'archive/reviews.parquet' (FORMAT PARQUET)")

dbDisconnect(db, shutdown = TRUE)