FROM opencpu/base:2.1.6

RUN apt install -y git texlive-full texinfo
RUN R -e 'install.packages(c("devtools","roxygen2"))'

RUN apt install -< postgres-devel
#Make symlink to find lib-pd
RUN ln -s /usr/pgsql-12/ /usr/local/pgsql