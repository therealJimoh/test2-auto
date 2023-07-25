FROM node:12.22.9-alpine as build
WORKDIR /usr/app
COPY package*.json /usr/app
COPY . /usr/app
RUN npm config set registry http://registry.npmjs.org/
RUN npm install
RUN npx next build
EXPOSE 3001
CMD npm start