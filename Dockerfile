FROM debian:stretch

RUN apt update
RUN apt install -y neovim
