FROM opencpu/base:2.1.6

RUN apt-get update
RUN apt install -y git texlive-full texinfo pandoc
RUN R -e 'install.packages(c("devtools","roxygen2"))'

RUN apt install -y postgresql-devel
#Make symlink to find lib-pd
RUN ln -s /usr/pgsql-12/ /usr/local/pgsql
RUN R -e 'install.packages(c("rmarkdown","ggplot2","DBI","knitr","tibble","vctrs"))'
