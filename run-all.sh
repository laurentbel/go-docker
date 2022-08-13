echo "Running all images sequentially"
docker run -t go-docker-debian
docker run -t go-docker-alpine
docker run -t go-docker-distroless
docker run -t go-docker-busybox
docker run -t go-docker-scratch