FROM opencpu/base:2.1.6

RUN apt-get update
RUN apt install -y git texlive-full texinfo
RUN R -e 'install.packages(c("devtools","roxygen2"))'
RUN R -e 'install.packages(c("rmarkdown","ggplot2","DBI","knitr","tibble","vctrs"))'
