FROM alpine:3.11.3
MAINTAINER Sergei O. Udalov <sergei.udalov@gmail.com>

ENV VIM_REVISION=v8.2.0172

RUN apk add git vim curl bash

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


COPY config/main.vim /root/.vimrc
COPY config/plugins.vim /root/.vim/plugins.vim
RUN touch /root/.vim/custom.vim
RUN vim +PlugInstall +qall

COPY colors/xoria256.vim /root/.vim/colors/xoria256.vim
COPY vimrc /root/.vim/custom.vim


ENV TERM=xterm-256color 

WORKDIR /guest
ENTRYPOINT ["vim"]
