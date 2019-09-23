FROM node:11-alpine

# Update everything on the box
RUN apk update

# Set the working directory
WORKDIR /srv

# Copy our package.json & install our dependencies
COPY package.json /srv/package.json
RUN yarn install

# Copy the remaining application code
COPY src /srv/src

# Start the app
CMD yarn start