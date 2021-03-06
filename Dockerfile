FROM chef/chefdk

RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates curl software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN apt-get update
RUN apt-get install -y docker-ce

RUN gem install kitchen-docker

COPY .ssh /root/.ssh
RUN chmod 600 -R /root/.ssh