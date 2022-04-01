FROM  ubuntu:latest
LABEL maintainer="tech-ally@lacework.net" \
      description="The Lacework CLI helps you manage the Lacework cloud security platform"

COPY ./LICENSE /
RUN apt-get update 
RUN apt-get -y install curl
RUN curl https://raw.githubusercontent.com/lacework/go-sdk/master/cli/install.sh | bash
