FROM node:18-alpine
WORKDIR /docker-node-hub
COPY package.json /docker-node-hub
RUN npm install
COPY . /docker-node-hub
CMD [ "node", "index.js" ]
EXPOSE 8000