FROM rocker/r-ver:3.6.3

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        file \
        libopenmpi-dev \
        libzmq3-dev \
        ca-certificates \
		curl \
        git \
        libcurl4-openssl-dev \
        libhiredis-dev \
        libssl-dev \
        libxml2-dev \
        pandoc \
        ssh \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/ 

RUN R -e "install.packages(c( \
    'dplyr', \
    'DataExplorer', \
    'fs', \
    'future', \
    'janitor', \
    'jsonlite', \
    'Laf', \
    'plumber', \
    'plotly', \
    'promises', \
    'R6', \
    'RCurl', \
    'rmarkdown', \
    'stringr', \
    'vroom' \
))"

COPY script.R script.R

EXPOSE 8000

ENTRYPOINT ["R", "-e", \
"library(plumber); \
plumb('script.R')$run(port=8000, host='0.0.0.0')"]
