# KBE_SERVER
#
# VERSION               0.0.1

FROM centos

MAINTAINER haixiao <xiaohaoppy@163.com>

RUN yum update -y
RUN yum install mariadb-devel openssl-devel -y

ADD kbengine /kbengine

