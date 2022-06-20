FROM node:lts-alpine

WORKDIR /app
RUN mkdir products
COPY package.json ./package.json
COPY lerna.json ./lerna.json
COPY services/products ./services/products
RUN npm i

CMD cd services/products && node index.js