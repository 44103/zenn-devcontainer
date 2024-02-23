FROM node:lts-slim

RUN export DEBIAN_FRONTEND="noninteractive" \
    && apt-get update \
    && apt-get -y install --no-install-recommends \
    git zsh vim make \
    curl ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work

ENV TZ=Asia/Tokyo

RUN zsh -c "`curl -L raw.github.com/44103/dotfiles/main/install.sh`"
