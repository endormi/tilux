FROM ubuntu:18.04

MAINTAINER Endormi

WORKDIR /usr/src/app

RUN apt-get update \
    && apt install -y python3 \
    python3-pip \
    git \
    sudo \
    lsb-core \
    ruby-dev \
    ruby-bundler \
    ruby-rspec-core \
    build-essential \
    make \
    && apt-get clean

RUN git clone https://github.com/endormi/tilux.git \
    && cd tilux

COPY . ./

RUN bash build

RUN pip3 install --no-cache-dir -r requirements.txt

ENV BUNDLER_VERSION=2.1.4

# Needed to get rid of "You must use Bundler 2 or greater with this lockfile" error
RUN gem sources -a https://rubygems.org
RUN gem install bundler -v $BUNDLER_VERSION

ENV GEM_HOME /usr/local/bundle
# You need to be root in order to run certain scripts
ENV BUNDLE_SILENCE_ROOT_WARNING=1 \
  BUNDLE_APP_CONFIG="$GEM_HOME"

RUN bundle install

# Keep the container running
CMD exec /bin/bash -c "sleep infinity & wait"
