FROM slapi/base:latest

MAINTAINER SLAPI Devs

RUN apk update &&\
    apk add \
    # Packages
    ruby &&\
    # Gems
    gem install --no-ri --no-rdoc \
    httparty && \
    # Cleanup
    gem cleanup &&\
    rm /var/cache/apk/*
