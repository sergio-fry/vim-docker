FROM alpine:3.11.3
MAINTAINER Sergei O. Udalov <sergei.udalov@gmail.com>

ENV VIM_REVISION=v8.2.0172

RUN apk add git
RUN apk add vim
RUN apk add curl

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


COPY vimrc /root/.vimrc


RUN vim +PlugInstall +:q

WORKDIR /guest
ENTRYPOINT ["vim"]
