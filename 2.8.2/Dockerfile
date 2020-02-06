FROM centos:7.6.1810

ARG ansible_version=2.8.2

RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install \
        curl \
        openssh-clients \
        PyYAML \
        python-jinja2 \
        python-httplib2 \
        python-keyczar \
        python-paramiko \
        python-setuptools \
        python-pip && \
        sshpass && \
        git && \
    pip install --upgrade pip && \
    pip install ansible==$ansible_version && \
    rm -rf /var/cache/apk/*

WORKDIR /etc/ansible
