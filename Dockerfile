FROM node:18.9.0-alpine as build
WORKDIR /usr/app
COPY package*.json /usr/app
COPY . /usr/app
RUN docker system prune
RUN npm install
RUN npm run build
EXPOSE 3001
CMD npm start