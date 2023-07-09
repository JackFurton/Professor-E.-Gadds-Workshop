FROM rockylinux:9.2

RUN yum -y update && yum clean all

RUN dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm

RUN yum install -y vim git python3 java-11-openjdk-devel xclip ncurses cronie ripgrep python3-pip

RUN python3 -m pip install ipython

RUN echo "set number" >> ~/.vimrc && \
    echo "set hlsearch" >> ~/.vimrc && \
    echo "set mouse=a" >> ~/.vimrc && \
    echo "set noerrorbells" >> ~/.vimrc && \
    echo "set novisualbell" >> ~/.vimrc && \
    echo "set autoindent" >> ~/.vimrc && \
    echo "set softtabstop=4" >> ~/.vimrc && \
    echo "set tabstop=4" >> ~/.vimrc && \
    echo "set shiftwidth=4" >> ~/.vimrc && \
    echo "set expandtab" >> ~/.vimrc && \
    echo "syntax enable" >> ~/.vimrc && \
    echo "vnoremap \y :w !xclip -selection clipboard<CR><CR>" >> ~/.vimrc

RUN echo "alias ll='ls -l'" >> ~/.bashrc && \
    echo "alias l='ls -la'" >> ~/.bashrc

WORKDIR /root/workdir
