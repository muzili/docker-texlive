FROM debian:wheezy
MAINTAINER Joshua Lee <muzili@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# install full texlive distribution
RUN apt-get update && \
    apt-get install -y texlive-full pandoc calibre && \
    texlive-fonts-recommended texlive-latex-extra \
    fonts-wqy-microhei fonts-wqy-zenhei dia && \
    apt-get autoclean && apt-get clean

VOLUME ["/source"]
WORKDIR /source
