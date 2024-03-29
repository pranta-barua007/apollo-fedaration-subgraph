FROM node:lts-alpine

WORKDIR /app

COPY package.json ./package.json
COPY lerna.json ./lerna.json
COPY services/accounts ./services/accounts
RUN npm i

CMD cd services/accounts && node index.js