FROM ubuntu:20.04
FROM openjdk:11


WORKDIR /pa1/
COPY ./* ./
ENV PATH=$PWD/pa1/scala/bin:$PATH
RUN scala version
RUN scala version

RUN ls
RUN scalac *.scala
