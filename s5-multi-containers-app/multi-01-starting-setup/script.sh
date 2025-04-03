# Start MongoDB container and expose port 27017
dk run -d --name mongodb-local \
  -p 27017:27017 \
  mongo

dk run -d --name mongodb \
  --rm \
  --network goals-net \
  -p 27017:27017 \
  -e MONGO_INITDB_ROOT_USERNAME=admin \
  -e MONGO_INITDB_ROOT_PASSWORD=admin \
  mongo

docker run -d --rm \
  --name test-mongo-auth \
  -p 27017:27017 \
  -e MONGO_INITDB_ROOT_USERNAME=admin \
  -e MONGO_INITDB_ROOT_PASSWORD=admin \
  mongo --auth

dk network create goals-net

dk run --name goals-be --rm --network goals-net -p 80:80 -d \
  -e MONGODB_HOST=mongodb \
  -e MONGODB_USERNAME=admin \
  -e MONGODB_PASSWORD=admin \
  goals-node

dk run --name goals-fe --rm -d -p 3000:3000 goals-react