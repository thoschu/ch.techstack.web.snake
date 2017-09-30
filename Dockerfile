FROM node:onbuild

MAINTAINER <Tom S. | thoschulte@gmail.com>

RUN apt-get update && apt-get -y upgrade

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 3300

CMD ["npm","start"]

