FROM ubuntu
MAINTAINER tethik@gmail.com

LABEL version="1.0.3"

# Install all TeX and LaTeX dependences
RUN apt update && \
  apt install --yes --no-install-recommends \
  git \
  ssh \
  curl \
  ca-certificates \
  make \
  texlive-fonts-recommended \
  texlive-latex-recommended \
  texlive-lang-english \
  texlive-lang-italian \
  texlive-latex-extra \
  texlive-xetex \
  lmodern \
  texlive-fonts-extra

# Export the output data
WORKDIR /data
VOLUME ["/data"]
