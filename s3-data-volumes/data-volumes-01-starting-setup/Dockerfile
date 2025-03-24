FROM node


WORKDIR /app

# We are copying the package.json file first to take advantage of Docker's caching
COPY package.json /app

RUN npm install

COPY . /app

ARG DEFAULT_PORT=80
ENV PORT=$DEFAULT_PORT

# It is optional to expose a port
# However, it is a good practice to expose the port that your application will run on
EXPOSE $PORT

### >>> NOTE:
# docker run -v /app/data => Anonymous volume (data will not be shared with other containers)
# docker run -v volume-name:/app/data => Named volume (data could be shared with other containers)
# docker run -v /app/code:/app/code => Bind mount (volume will be shared with the host)
### <<< END NODE

### >>> NOTE:
# Default: volumes are read-write
# Read-only volumes
# docker run -v /app/data:/app/data:ro => Read-only volume
### <<< END NODE


# An example of an anonymous volume = docker run -v /app/temp
# It will be removed when the container is removed, and not shared with other containers
#VOLUME ["/app/temp"]

#CMD ["node", "server.js"]
CMD ["npm", "start"]