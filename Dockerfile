FROM ubuntu:xenial

RUN apt-get update && apt-get install -y build-essential nodejs-legacy npm

RUN npm install -g npm
RUN npm install -g local-web-server

COPY ./src /usr/server
WORKDIR /usr/server
EXPOSE 8000
CMD [ "ws", "-p", "8000", "-d", "./"]
