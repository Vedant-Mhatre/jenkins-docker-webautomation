FROM centos

RUN yum install sudo -y

RUN sudo yum install wget java-1.8.0-openjdk-devel -y

RUN curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

RUN sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

RUN	sudo yum install jenkins -y

RUN echo -e "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

CMD ["java", "-jar", "usr/lib/jenkins/jenkins.war"]

EXPOSE 8080
