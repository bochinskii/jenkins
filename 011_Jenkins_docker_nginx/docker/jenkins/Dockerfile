FROM jenkins/jenkins:lts-jdk11

#
# Switch to root
#
USER root

#
# Install some packages
#
#RUN apt-get update && rm -rf /var/lib/apt/lists/*

#
# Install plaguins
#
RUN jenkins-plugin-cli --plugins publish-over-ssh:1.24 \
                                 ssh-steps:2.0.39.v831c5e6468b_c \
                                 awseb-deployment-plugin:0.3.21 \
                                 docker-plugin:1.2.9 \
                                 docker-workflow:1.28
#
# Install Dcoker for using docker pipeline
#

RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh \
                                                       && usermod -aG docker jenkins

#
# logs
#
COPY --chown=jenkins:jenkins ./log.properties /var/jenkins_home/

ENV JENKINS_OPTS="-Djava.util.logging.config.file=/var/jenkins_home/log.properties"

#
# Change user
#
USER jenkins
