FROM node:8 as APP

WORKDIR /urs/src/app

COPY app/package*.json ./

# RUN apt-get update 
# RUN apt-get install -y npm
RUN npm install

COPY app/ app/

FROM node:alpine

COPY --from=APP /urs/src/app /urs/src/app

WORKDIR /urs/src/app

EXPOSE 3000

CMD ["node", "app.js"]