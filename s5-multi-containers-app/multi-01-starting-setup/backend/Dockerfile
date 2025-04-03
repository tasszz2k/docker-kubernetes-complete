FROM node

WORKDIR /app

COPY package.json .

RUN npm install

# Copy all files to the /app directory
COPY . .

EXPOSE 80

# ENV MONGODB_HOST=mongodb
# ENV MONGODB_USERNAME=admin
# ENV MONGODB_PASSWORD=admin

CMD ["node", "app.js"]