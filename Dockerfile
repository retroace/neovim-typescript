FROM node:22-alpine

RUN apk update \
    && apk add ca-certificates curl gnupg tar git openssl neovim ripgrep luarocks gcc gzip bash

ADD nvim /root/.config/nvim
RUN npm i -g vscode-langservers-extracted typescript typescript-language-server eslint
RUN apk update
WORKDIR /app

ENTRYPOINT [ "nvim"  ]
