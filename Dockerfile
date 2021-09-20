FROM node:12.18.3

WORKDIR /usr/src/app

COPY package*.json ./

ENV MONGO_URL "mongodb://mongo:27017"
ENV DB_NAME boilerplate_db

RUN yarn install

COPY . .

CMD ["yarn", "dev"]
