FROM opencpu/base:2.1.6

RUN apt install -y git texlive-full texinfo
RUN R -e 'install.packages(c("devtools","roxygen2"))'
