MAINTAINER Sergei O. Udalov <sergei.udalov@gmail.com>

FROM debian:buster

ENV AMIX_VIMRC_REVISION=993ed55

RUN apt update && apt install -y neovim git-core
RUN git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime \
                      && cd ~/.vim_runtime && git checkout $AMIX_VIMRC_REVISION \
                      && sh ~/.vim_runtime/install_awesome_vimrc.sh
                      && mkdir -p ~/.config \
                          && ln -s ~/.vim_runtime ~/.config/nvim \
                          && ln -s ~/.vimrc ~/.config/nvim/init.vim

WORKDIR /guest
ENTRYPOINT ["vim"]
