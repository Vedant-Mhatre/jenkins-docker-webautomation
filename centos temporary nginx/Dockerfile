FROM centos:latest

RUN yum update -y

RUN sudo dnf install nginx

RUN sudo systemctl enable nginx && \
  sudo systemctl start nginx
