FROM node:14

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install 

COPY . .

EXPOSE 4001

CMD [ "npm","start"]
