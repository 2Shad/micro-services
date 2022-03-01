FROM node

COPY app /home/node/

WORKDIR /home/node/app

RUN apt-get update 
RUN apt-get upgrade –y
RUN apt-get install npm -y
RUN npm install


EXPOSE 3000

CMD ["npm", "start"]