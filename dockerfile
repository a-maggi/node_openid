FROM node:12.4-alpine
WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm install

COPY . ./
RUN npm build

CMD ["npm", "start"]