# base image
FROM node:alpine

# create & set working directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

# copy source files
COPY . .

# install dependencies
RUN yarn

RUN ["yarn", "build"]

# start app
EXPOSE 3000
CMD ["yarn", "start"]