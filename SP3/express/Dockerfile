FROM node:15.12-alpine

# Create app directory
RUN mkdir -p /root/app
WORKDIR /root/app

# Install app dependencies
RUN apk update && apk upgrade && apk add git

COPY package*.json ./
COPY . .
RUN apk add --no-cache python make gcc g++ \
  && npm install

# Build app
RUN npm start

EXPOSE 8080

# start command
CMD [ "npm", "run", "start:prod" ]
