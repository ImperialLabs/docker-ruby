FROM slapi/base:latest

MAINTAINER SLAPI Devs

COPY .gemrc /root

RUN apk update &&\
    apk add \
    # Packages
    ruby &&\
    # Gems
    gem install \
    httparty && \
    # Cleanup
    gem cleanup &&\
    rm /var/cache/apk/*
