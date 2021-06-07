FROM ubuntu:20.04

RUN apt update

RUN DEBIAN_FRONTEND=noninteractive apt install -y \
    maven \
    openjdk-11-jdk \
    curl \
    make

RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

CMD make package d-build