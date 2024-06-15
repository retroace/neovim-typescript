FROM node:22-alpine

ADD nvim /root/.config/nvim

RUN apk add --update alpine-sdk neovim-doc

RUN apk update \
    && apk add ca-certificates curl gnupg tar git openssl neovim ripgrep luarocks gcc gzip bash go python3

RUN apk add --update python3 python3-dev gfortran py-pip build-base

RUN apk update

RUN npm i -g vscode-langservers-extracted typescript typescript-language-server eslint

WORKDIR /app

ENTRYPOINT [ "nvim" ]
