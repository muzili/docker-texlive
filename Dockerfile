FROM debian:jessie

MAINTAINER Joshua Lee <muzili@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# install full texlive distribution
RUN apt-get update && \
    apt-get install -y dia inkscape texlive-latex-base \
    texlive-font-utils pandoc calibre texlive-xetex ruby \
    texlive-context texlive-fonts-recommended \
    texlive-latex-recommended texlive-latex-extra \
    fonts-wqy-microhei fonts-wqy-zenhei && \
    apt-get autoclean && apt-get clean

VOLUME ["/source"]
WORKDIR /source
