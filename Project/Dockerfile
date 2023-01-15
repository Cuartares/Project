FROM rocker/tidyverse:4.1.2

RUN R -e "install.packages(c('ggplot2','gridExtra'))"


RUN mkdir -p /output

COPY Main.R Main.R
COPY insurance.csv insurance.csv

CMD ["Rscript", "Main.R"]

CMD R -e "source('Main.R')"