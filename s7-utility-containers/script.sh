docker build -t node-util .

docker run -it -v $(pwd):/app node-util npm init

docker build -t mynpm .

docker run -it -v $(pwd):/app mynpm init

docker-compose run npm init
docker-compose run --rm npm init