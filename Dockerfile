FROM xmlangel/base-ubuntu:14.04
RUN apt-get update && \
apt-get install -y nodejs && \
apt-get install -y npm &&\
npm install npm -g &&\
ln -s /usr/bin/nodejs /usr/bin/node
RUN npm cache clean -f
RUN npm install -g n
RUN n stable
RUN ln -sf /usr/local/n/versions/node/7.6.0/bin/node /usr/bin/node 
RUN mkdir /nodejs
VOLUME "/nodejs"
WORKDIR /nodejs

EXPOSE 8081
EXPOSE 3000
