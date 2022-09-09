FROM alpine:3.16

WORKDIR /app

RUN apk update && apk add \
  R \
  R-doc \
  R-dev \
  g++ \
  libxml2-dev 

COPY install.R .
COPY Rprofile.site /usr/lib/R/etc

RUN Rscript install.R