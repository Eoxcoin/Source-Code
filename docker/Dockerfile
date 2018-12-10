FROM debian:stretch
LABEL maintainer="EOX Developers <dev@eox.org>"
LABEL description="Dockerised EOXCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
