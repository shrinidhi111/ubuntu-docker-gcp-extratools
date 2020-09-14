# FROM image ubuntu:18.04
FROM ubuntu:18.04

# image version
LABEL version="0.0.2"

# install tools
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y tree
RUN apt-get install -y openjdk-11-jdk
RUN apt-get install -y gradle
RUN apt-get install sudo -y
RUN /bin/bash -c "$(curl -fsSL https://get.docker.com)"
