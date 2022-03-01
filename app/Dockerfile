FROM node

COPY app /home/node/

WORKDIR /home/node/app

RUN apt-get update 
RUN apt-get install -y npm
RUN npm install


EXPOSE 3000

CMD ["npm", "start"]