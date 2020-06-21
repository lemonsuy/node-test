FROM node:10-alpine

RUN mkdir -p /var/www/html/app

WORKDIR /var/www/html/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5000

CMD [ "pm2 start", "server.js" ]
