FROM node:4.1.2
MAINTAINER Vishal Sharma

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080

# Add deploy script
#ADD deploy.sh /usr/src/app/deploy.sh
#RUN chmod +x /usr/src/app/deploy.sh

# Run deploy script
#RUN /usr/src/app/deploy.sh

CMD [ "npm", "start" ]
