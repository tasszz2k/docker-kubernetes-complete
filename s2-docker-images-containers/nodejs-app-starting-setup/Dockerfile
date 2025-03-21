FROM node

WORKDIR /app

# we should copy package.json first to take advantage of Docker cache
COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 80

# CMD != RUN
# CMD is used to specify the command to run when the container starts (not build)
CMD ["node", "server.js"]