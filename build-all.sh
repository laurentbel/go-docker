echo "Building all images"
docker build -t go-docker-debian -f ./docker/debian/Dockerfile .
docker build -t go-docker-alpine -f ./docker/alpine/Dockerfile .
docker build -t go-docker-distroless -f ./docker/distroless/Dockerfile .
docker build -t go-docker-busybox -f ./docker/busybox/Dockerfile .
docker build -t go-docker-scratch -f ./docker/scratch/Dockerfile .
echo "Images built"

echo "Display size"
docker image ls | grep go-docker-