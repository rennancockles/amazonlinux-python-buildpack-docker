FROM amazonlinux:latest

LABEL maintainer="Rennan Cockles <r3ck.dev@gmail.com>"

RUN yum -y update
RUN yum clean metadata
RUN yum -y install wget tar gzip make gcc openssl-devel bzip2-devel libffi-devel zip git which

RUN cd /opt
RUN wget https://www.python.org/ftp/python/3.6.15/Python-3.6.15.tgz

RUN tar xzf Python-3.6.15.tgz
RUN cd Python-3.6.15

RUN ./configure --enable-optimizations
RUN make altinstall

RUN cd /
RUN rm -rf /opt/Python-3.6.15*

RUN ln -s $(which python3.6) /usr/local/bin/python3
RUN python3 -m pip install -U pip