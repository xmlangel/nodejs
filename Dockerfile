FROM xmlangel/base-ubuntu:14.04
RUN apt-get update && \
apt-get install -y nodejs && \
apt-get install -y npm &&\
ln -s /usr/bin/nodejs /usr/bin/node
RUN mkdir /nodejs
VOLUME "/nodejs"
WORKDIR /nodejs
