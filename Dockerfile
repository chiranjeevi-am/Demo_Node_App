FROM node:8

WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install
# RUN npm install --only=production

COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
