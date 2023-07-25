FROM node:16-alpine

WORKDIR /etc/sourcify

COPY . .

COPY configs/chains/* services/core/src/
COPY configs/.env environments/.env

RUN npm install

RUN npx lerna bootstrap

RUN npx lerna run build