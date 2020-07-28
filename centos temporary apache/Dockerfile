FROM centos:latest

RUN yum update -y

RUN yum install -y httpd net-tools

RUN echo "Web page running using httpd on Centos" > /var/www/html/index.html

ENTRYPOINT apachectl "-DFOREGROUND"
