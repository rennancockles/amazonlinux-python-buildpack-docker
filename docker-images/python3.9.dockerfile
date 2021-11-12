FROM amazonlinux:latest

LABEL maintainer="Rennan Cockles <r3ck.dev@gmail.com>"

RUN yum -y update && yum clean metadata && \
yum -y install \
  wget \
  tar \
  gzip \
  make \
  gcc \
  openssl-devel \
  bzip2-devel \
  libffi-devel \
  sqlite-devel \
  zip \
  git \
  which

WORKDIR /opt

RUN wget https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tgz
RUN tar xzf Python-3.9.7.tgz

WORKDIR /opt/Python-3.9.7

RUN ./configure --enable-optimizations
RUN make altinstall

WORKDIR /

RUN rm -rf /opt/Python-3.9.7*

RUN ln -s $(which python3.9) /usr/local/bin/python3
RUN python3 -m pip install -U pip
