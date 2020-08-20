FROM opencpu/base:2.1.6

RUN apt-get update --fix-missing
RUN apt install -y git texlive-full texinfo pandoc
RUN R -e 'install.packages(c("devtools","roxygen2"))'

RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" |sudo tee  /etc/apt/sources.list.d/pgdg.list
RUN apt-get update 
RUN apt -y install postgresql-12 postgresql-client-12
#Make symlink to find lib-pd
RUN ln -s /usr/pgsql-12/ /usr/local/pgsql
RUN R -e 'install.packages(c("rmarkdown","ggplot2","DBI","knitr","tibble","vctrs"))'