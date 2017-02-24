FROM node:7

RUN npm install -g local-web-server

COPY ./src /usr/server
WORKDIR /usr/server
EXPOSE 8000
CMD [ "ws", "-p", "8000", "-d", "./"]
