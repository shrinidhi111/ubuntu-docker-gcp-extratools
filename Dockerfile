# FROM image ubuntu:18.04
FROM cruizba/ubuntu-dind


# install tools
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y tree
RUN apt-get install -y openjdk-11-jdk
RUN apt-get install -y gradle
RUN apt-get install -y gnupg2
RUN apt-get install sudo -y
RUN sudo apt install curl -y
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-sdk -y
      
