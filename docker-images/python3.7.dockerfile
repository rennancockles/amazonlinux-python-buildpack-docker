FROM amazonlinux:latest

LABEL maintainer="Rennan Cockles <r3ck.dev@gmail.com>"

RUN yum -y update && yum clean metadata && \
yum -y install \
  python37 \
  zip \
  git

RUN python3 -m pip install -U pip
