FROM node:10-alpine

RUN mkdir -p /var/www/html/app/node_modules && chown -R node:node /var/www/html/app

WORKDIR /var/www/html/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "node", "server.js" ]
