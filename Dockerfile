FROM node:alpine

WORKDIR  app/todo

ADD /src /src

COPY ./package.json .

COPY ./webpack.config.js .

RUN npm install -g

COPY . .

ENV PATH=$PATH:/app/todo/node_modules/.bin