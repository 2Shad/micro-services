FROM node:8 as APP

WORKDIR /urs/src/app


COPY app/ .
# RUN apt-get update 
# RUN apt-get install -y npm
RUN npm install

FROM node:alpine

COPY --from=APP /urs/src/app /urs/src/app

WORKDIR /urs/src/app

EXPOSE 3000

ENV DB_HOST=mongodb://mongo:27017/posts

CMD node seeds/seed.js && npm start