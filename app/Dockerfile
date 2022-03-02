FROM node as APP

COPY app /home/node/

WORKDIR /home/node/app

# RUN apt-get update 
# RUN apt-get install -y npm
RUN npm install


FROM node:alpine

COPY --from=APP /home/node/app /home/node/app

EXPOSE 3000

CMD ["npm", "start"]