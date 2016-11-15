FROM slapi/base:latest

MAINTAINER SLAPI Devs

RUN apk update &&\
    apk add \
    # Packages
    ruby ruby-dev &&\
    # Gems
    gem install --no-ri --no-rdoc \
    httparty json && \
    # Cleanup
    gem cleanup &&\
    rm /var/cache/apk/*
