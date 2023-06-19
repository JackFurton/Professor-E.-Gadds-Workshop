FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    build-essential \
    python3 \
    python3-pip \
    xclip \
    vim

RUN useradd -ms /bin/bash devuser

USER devuser

WORKDIR /home/devuser

RUN echo "set number\n\
set hlsearch\n\
set mouse=a\n\
set noerrorbells\n\
set novisualbell\n\
set autoindent\n\
set softtabstop=4\n\
set tabstop=4\n\
set shiftwidth=4\n\
set expandtab\n\
colorscheme darkblue\n\
vnoremap \y :w !xclip -selection clipboard<CR><CR>\n\
syntax enable" >> .vimrc

ENTRYPOINT /bin/bash
