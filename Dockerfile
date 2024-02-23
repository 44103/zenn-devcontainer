FROM node:slim

RUN export DEBIAN_FRONTEND="noninteractive" \
    && apt-get update \
    && apt-get -y install --no-install-recommends \
    git zsh vim make \
    curl ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work

RUN yarn \
    && yarn add -D zenn-cli \
    && yarn zenn init

ENV TZ=Asia/Tokyo
