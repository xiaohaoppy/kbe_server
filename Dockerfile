# KBE_SERVER
#
# VERSION               0.0.1

FROM centos

MAINTAINER haixiao <xiaohaoppy@163.com>

RUN yum update -y

ADD kbengine /kbengine

