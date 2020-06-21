FROM node:12.18-alpine

RUN mkdir -p /var/www/html/app

WORKDIR /var/www/html/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5000

CMD [ "node", "server.js" ]
