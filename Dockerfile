FROM ubuntu:latest

ENV DEBIAN_FRONTEND="noninteractive" TZ="Europe/London"

RUN apt-get update && \
    apt-get install -y make && \
    apt-get install -y build-essential && \
    apt-get install -y git && \
    apt-get install -y lsb-release && \
    apt-get install -y curl && \
    apt-get install -y tzdata && \
    apt-get install -y texlive-full && \
    apt-get purge -y *-doc && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

RUN lsb_release -a
