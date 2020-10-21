# Very inefficient, please don't do this

FROM ubuntu:20.04

LABEL maintainer="Flash-Git"

RUN mkdir -p golem/vim

RUN apt update

RUN apt-get install git build-essential ncurses-dev -y

WORKDIR /code

RUN git clone https://github.com/vim/vim.git

WORKDIR /code/vim/src

RUN ./configure --prefix=/golem/vim/

RUN make

RUN make install

# RUN /golem/vim/bin/vim

# VOLUME golem/
