# Rotten Tomatoes data

The code in this repository assumes that you have saved the data available [here](https://www.kaggle.com/datasets/andrezaza/clapper-massive-rotten-tomatoes-movies-and-reviews) in a `archive` folder under this project.
These data comprise two CSV files: `rotten_tomatoes_movies.csv` and `rotten_tomatoes_movie_reviews.csv`.

The code in this repository uses the `tidyverse` package for analysis.
It also uses `duckdb`, because DuckDB makes queries very fast with very little overhead.^[Use `install.packages(c("tidyverse", "duckdb"))` if necessary.]
Some code relies on `dbplyr`, which is installed with `tidyverse`, but not loaded with it.^[Packages are installed on your hard drive with `install.packages()`, but loaded into memory with `library()`.]

If you are interested in playing around with the Rotten Tomatoes data, you might **clone** this repository and use one of the `.qmd` files here as a template.^[According to [GitHub](https://github.com/git-guides/git-clone), "the `git clone` command is used to create a copy of a specific repository or branch within a repository."
Perhaps the easiest way to clone for novices is to install GitHub Desktop on your computer and use the "Open with GitHub Desktop" option under the "Code" button seen [here](https://github.com/iangow/movies).]
Simply copy the `.qmd` file you want to use as a new `.qmd` file---that is, a file with a different name---in this repository.

Note that it is easier to set your computer up for `Render HTML` than it is for `Render PDF`.
`Render PDF` requires some version of LaTeX.^[The `tinytex` package is a good option for getting a minimal installation going on your computer.]
Additionally, the PDF settings for some of the `.qmd` files assume the presence of certain fonts (*TeX Gyre Pagella* and *TeX Gyre Pagella Math*).
So if you want to compile to PDF and don't want to download these fonts, you can remove the lines with those settings from the `.qmd` files you create.^[To get these fonts on MacOS, I think you download the associated `.otf` files and install them by double-clicking. Maybe it works similarly on Windows.
There are `.otf` files [here](https://www.ctan.org/tex-archive/fonts/tex-gyre-math/opentype) for the math font and [here](https://www.ctan.org/tex-archive/fonts/tex-gyre/opentype) for the "regular" fonts.
In the latter case, I think you want to download and install all the variants: regular, bold, italics, and bold-italic.]

The code here is a Git repository hosted on GitHub.
If you are simply working on versions of copied-and-renamed `.qmd` files, then the Git elements should not be too complicated.
If you want to push your code to GitHub, first use the "Commit" functionality available the Git pane in RStudio to commit your code locally.
Then you would want to use "Pull with Rebase" (a dropdown from the "Pull" button) in the Git pane in RStudio, then "Push" to send your code to GitHub.^[I recommend using "Pull with Rebase" for reasons that are complicated to explain. It is possible to set up Git on your computer so that "Pull with Rebase" is the option selected when you select "Pull".]
Only if you are editing files that someone else has edited since you last did "Pull with Rebase" do things get complicated.
When starting out with GitHub, I would recommend avoiding that complication if you can.
