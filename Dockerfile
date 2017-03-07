FROM slapi/base:latest

MAINTAINER SLAPI Devs

COPY .gemrc /root

RUN apk update &&\
    apk add \
    # Packages
    ruby ruby-dev &&\
    # Gems
    gem install \
    httparty json && \
    # Cleanup
    gem cleanup &&\
    rm /var/cache/apk/*
