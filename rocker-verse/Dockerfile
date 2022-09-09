FROM rocker/verse:4

WORKDIR /appbase

RUN apt-get -y update && apt-get -y upgrade

COPY *.R .

RUN Rscript install.R