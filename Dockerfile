FROM debian:buster

RUN apt update
RUN apt install -y git-core
RUN apt install -y neovim
RUN git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
RUN sh ~/.vim_runtime/install_awesome_vimrc.sh

RUN mkdir -p ~/.config
RUN ln -s ~/.vim_runtime ~/.config/nvim
RUN ln -s ~/.vimrc ~/.config/nvim/init.vim
