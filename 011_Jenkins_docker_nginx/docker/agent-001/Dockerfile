FROM jenkins/ssh-agent:latest-jdk11

#
# For run container from jenkins user
#

RUN chown -R jenkins: /etc/ssh && chown -R jenkins: /run && chown jenkins: /etc/environment

#
# Install some packages
#
RUN apt-get update && apt-get install -y curl \
                                         git \
                                         python3 \
                   && rm -rf /var/lib/apt/lists/*
#
# Install docker for use docker in build
#
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh \
                                                       && usermod -aG docker jenkins

#
# Change user
#
USER jenkins
