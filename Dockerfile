FROM debian
MAINTAINER Sergei O. Udalov <sergei.udalov@gmail.com>


RUN apt update && apt install -y git-core vim-nox curl bash ripgrep

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
