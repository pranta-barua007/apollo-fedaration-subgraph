FROM node:lts-alpine

WORKDIR /app

COPY package.json ./package.json
COPY lerna.json ./lerna.json
COPY services/reviews ./services/reviews
RUN npm i

CMD cd services/reviews && node index.js