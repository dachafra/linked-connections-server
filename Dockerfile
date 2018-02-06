FROM node:8.9.1

MAINTAINER dachafra@gmail.com

WORKDIR /tripscore/linked-connections-server

COPY package*.json ./

RUN	npm install \
	&& mkdir ../datasets \
	&& mkdir ../config 	

COPY . .

ENTRYPOINT ["/tripscore/linked-connections-server/run.sh"]

EXPOSE 3000