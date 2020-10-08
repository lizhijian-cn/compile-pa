FROM ubuntu:20.04
FROM openjdk:11

ENV SCALA_VERSION 2.13.3

RUN sudo apt install scala

WORKDIR /pa1/
COPY ./* ./
RUN scalac *.scala
