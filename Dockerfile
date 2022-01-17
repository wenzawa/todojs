FROM node:alpine

WORKDIR  usr/app/todo
COPY .  /usr/app/todo/

RUN npm install

COPY . .
RUN npm build

ENV PATH=$PATH:/usr/app/todo/node_modules/.bin
ENV NODE_ENV=development

CMD ["npm start"]