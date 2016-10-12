FROM slapi/base:latest

MAINTAINER SLAPI Devs

RUN apk add \
    # Packages
    ruby &&\
    # Gems
    gem install \
    httparty
    # Cleanup
    gem cleanup
    rm /var/cache/apk/*
