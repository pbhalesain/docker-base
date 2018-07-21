FROM centos:latest
MAINTAINER pbhalesain
RUN yum update -y && yum upgrade -y
RUN yum install -y unzip wget curl git openjdk-7-jre-headless wget supervisor docker.io openssh-server
RUN yum install -y epel-release
RUN yum clean all
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/
RUN echo 'root:pbhalesain' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
