FROM node:8.4.0-alpine

MAINTAINER Sun Yue <sunyue@4paradigm.com>

ARG VERSION=1.0.0

LABEL version=$VERSION

RUN npm install --global gitbook-cli \
        && gitbook fetch ${VERSION} \
        && npm cache verify \
        && rm -rf /tmp/*

WORKDIR /srv/gitbook

VOLUME /srv/gitbook

EXPOSE 4000 35729

CMD gitbook install && gitbook serve