FROM node

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 80

# CMD != RUN
# CMD is used to specify the command to run when the container starts (not build)
CMD ["node", "server.js"]