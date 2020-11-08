FROM ubuntu:18.04

MAINTAINER Endormi

RUN apt-get update \
    && apt install -y python3 \
    python3-pip \
    git \
    ruby \
    ruby-bundler \
    ruby-rspec-core \
    && apt-get clean

RUN git clone https://github.com/endormi/tilux.git \
    && cd tilux \
    && bash usage

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

# Keep the container running
CMD exec /bin/bash -c "sleep infinity & wait"
