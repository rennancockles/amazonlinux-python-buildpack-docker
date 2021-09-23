FROM amazonlinux:latest

LABEL maintainer="Rennan Cockles <r3ck.dev@gmail.com>"

RUN yum -y update

RUN amazon-linux-extras enable python3.8
RUN yum clean metadata
RUN yum -y install python38 zip git which

RUN ln -s $(which python3.8) /usr/local/bin/python3
RUN python3 -m pip install -U pip
