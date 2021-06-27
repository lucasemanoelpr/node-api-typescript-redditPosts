FROM node:14-alpine

WORKDIR /src
COPY package*.json /
EXPOSE 3000
ENV NODE_ENV=development
RUN npm install -g nodemon && npm install
COPY . /
CMD ["nodemon", "bin/www"]