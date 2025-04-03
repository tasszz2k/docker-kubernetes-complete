FROM node

WORKDIR /app

COPY package.json .

RUN npm install

# Copy all files to the /app directory
COPY . .

EXPOSE 3000

CMD ["npm", "start"]