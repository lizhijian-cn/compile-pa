FROM ubuntu:20.04
FROM openjdk:11

ENV SCALA_VERSION 2.13.3

RUN apt update
RUN apt install zip unzip
# RUN curl -s "https://get.sdkman.io" | bash && \
# source "~/.sdkman/bin/sdkman-init.sh" && \
# sdk selfupdate

RUN scala -version

WORKDIR /pa1/
COPY ./* ./
RUN ls
RUN scalac *.scala
