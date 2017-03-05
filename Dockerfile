FROM xmlangel/base-ubuntu:14.04

#노드설치
RUN apt-get update && \
apt-get install -y nodejs && \
apt-get install -y npm &&\
npm install npm -g &&\
ln -s /usr/bin/nodejs /usr/bin/node
RUN npm cache clean -f
RUN npm install -g n
RUN n stable
RUN ln -sf /usr/local/n/versions/node/7.6.0/bin/node /usr/bin/node 

#몽고디비설치
#RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
#RUN echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
#RUN apt-get update && \
#apt-get install -y mongodb-org
#RUN service mongod start

#Volume 설정
RUN mkdir /nodejs
VOLUME "/nodejs"
WORKDIR /nodejs

#포트설정
EXPOSE 8081
EXPOSE 3000

