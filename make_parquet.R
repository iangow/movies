library(tidyverse)
library(duckdb)

db <- dbConnect(duckdb::duckdb())
dbExecute(db, "CREATE TABLE movies AS SELECT * FROM read_csv_auto('archive/rotten_tomatoes_movies.csv')")
dbExecute(db, "CREATE TABLE reviews AS SELECT * FROM read_csv_auto('archive/rotten_tomatoes_movie_reviews.csv')")
dbExecute(db, "COPY movies TO 'archive/movies.parquet' (FORMAT PARQUET)")
dbExecute(db, "COPY reviews TO 'archive/reviews.parquet' (FORMAT PARQUET)")

dbDisconnect(db, shutdown = TRUE)