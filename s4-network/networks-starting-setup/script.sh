# Create a network
dk network create favorites-net

# Run a MongoDB container
dk run -d --name mongodb --network favorites-net mongo