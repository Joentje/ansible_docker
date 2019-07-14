FROM centos:centos7

ARG ansible_version 2.8.1

RUN yum clean all && \
    yum -y install \
        epel-release \
        curl \
        openssh-clients \
        PyYAML \
        python-jinja2 \
        python-httplib2 \
        python-keyczar \
        python-paramiko \
        python-setuptools \
        python-pip && 
    pip install --upgrade pip && \
    pip install ansible==$ansible_version
    rm -rf /var/cache/apk/*

WORKDIR /etc/ansible