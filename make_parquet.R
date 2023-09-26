library(tidyverse)
library(duckdb)

db <- dbConnect(duckdb::duckdb())
dbExecute(db, "COPY (SELECT * FROM read_csv_auto('archive/rotten_tomatoes_movies.csv')) TO 'archive/movies.parquet' (FORMAT PARQUET)")
dbExecute(db, "COPY (SELECT * FROM read_csv_auto('archive/rotten_tomatoes_movie_reviews.csv')) TO 'archive/reviews.parquet' (FORMAT PARQUET)")

dbDisconnect(db, shutdown = TRUE)