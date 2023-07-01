FROM ubuntu:20.04
LABEL nasalib-ci version="7.1"

RUN apt update -yq
RUN apt upgrade -yq
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
RUN apt install -yq ca-certificates curl emacs perl rsync locales
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ADD pvs7.1.0-ix86_64-Linux-allegro.gz /
RUN cd pvs-7.1.0 && ./install-sh

ENV PATH=/pvs-7.1.0:$PATH
