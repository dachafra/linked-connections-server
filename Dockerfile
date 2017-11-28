FROM node:8.9.1

MAINTAINER dachafra@gmail.com

WORKDIR /tripscore/linked-connections-server

RUN mkdir ../datasets \
	&& git clone https://github.com/dachafra/linked-connections-server.git . \
	&& chmod +x run.sh \
	&& npm install

ENTRYPOINT ["/tripscore/linked-connections-server/run.sh"]

EXPOSE 3000
