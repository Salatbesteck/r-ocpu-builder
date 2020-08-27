FROM opencpu/base:2.1.6

RUN apt-get update --fix-missing
RUN apt install -y git texlive-full texinfo pandoc
RUN R -e 'install.packages(c("devtools","roxygen2"))'

RUN apt install libpq-dev -y
RUN R -e 'install.packages(c("rmarkdown","ggplot2","DBI","knitr","tibble","vctrs"))'